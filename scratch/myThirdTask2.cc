#include "ns3/applications-module.h"
#include "ns3/core-module.h"
#include "ns3/internet-module.h"
#include "ns3/mobility-module.h"
#include "ns3/network-module.h"
#include "ns3/wifi-module.h"
#include "ns3/ssid.h"
#include "ns3/yans-wifi-helper.h"
 
using namespace ns3;
 
NS_LOG_COMPONENT_DEFINE("WLAN_Infrastructure");
 
int main(int argc, char* argv[])
{
    bool verbose = true;
    // Create 5  Sta Wifi nodes
    uint32_t nWifi = 5; 
    bool tracing = true;
 
    CommandLine cmd(__FILE__);
    cmd.AddValue("nWifi", "Number of wifi STA devices", nWifi);
    cmd.AddValue("verbose", "Tell echo applications to log if true", verbose);
    cmd.AddValue("tracing", "Enable pcap tracing", tracing);
 
    
    cmd.Parse(argc, argv);

    if (nWifi > 18)
    {
        std::cout << "nWifi should be 18 or less; otherwise grid layout exceeds the bounding box"
<< std::endl;
        return 1;
    }
 
    if (verbose)
    {
        LogComponentEnable("UdpEchoClientApplication", LOG_LEVEL_INFO);
        LogComponentEnable("UdpEchoServerApplication", LOG_LEVEL_INFO);
    }
 
//Config::SetDefault("ns3::WifiRemoteStationManager::RtsCtsThreshold", StringValue("0"));
 
    NodeContainer statNodes;
    statNodes.Create(nWifi);
    //Creating one Ap Wifi node
    NodeContainer wifiApNode;
    wifiApNode.Create(1);

    YansWifiChannelHelper channel = YansWifiChannelHelper::Default();
    YansWifiPhyHelper phy;
    phy.SetChannel(channel.Create());
 
    WifiMacHelper mac;
    Ssid ssid = Ssid("EECE5155");
 
    WifiHelper wifi;
 
    NetDeviceContainer staDevices;
    mac.SetType("ns3::StaWifiMac", "Ssid", SsidValue(ssid), "ActiveProbing", BooleanValue(false));
    staDevices = wifi.Install(phy, mac, statNodes);
 
    NetDeviceContainer apDevices;
    mac.SetType("ns3::ApWifiMac", "Ssid", SsidValue(ssid));
    apDevices = wifi.Install(phy, mac, wifiApNode);
 

    MobilityHelper mobility;
 
  mobility.SetPositionAllocator("ns3::GridPositionAllocator",
                                  "MinX",
                                  DoubleValue(0.0),
                                  "MinY",
                                  DoubleValue(0.0),
                                  "DeltaX",
                                  DoubleValue(5.0),
                                  "DeltaY",
                                  DoubleValue(10.0),
                                  "GridWidth",
                                  UintegerValue(3),
                                  "LayoutType",
                                  StringValue("RowFirst"));
 
    mobility.SetMobilityModel("ns3::RandomWalk2dMobilityModel",
                              "Bounds",
                              RectangleValue(Rectangle(-90, 90, -90, 90)));
 
    mobility.Install(statNodes);
    mobility.SetMobilityModel("ns3::ConstantPositionMobilityModel");
    mobility.Install(wifiApNode);
 
    // Installing IPv protocol stack to Wifi nodes
    InternetStackHelper stack;
    stack.Install(wifiApNode);
    stack.Install(statNodes);
 
    // Assigning IP addresses to Wifi devices
    Ipv4AddressHelper address;
    address.SetBase("192.168.2.0", "255.255.255.0");
    Ipv4InterfaceContainer wifiInterfaces;
    wifiInterfaces = address.Assign(staDevices);
    address.Assign(apDevices);
 
    UdpEchoServerHelper echoServer(21);
    ApplicationContainer serverApps = echoServer.Install(statNodes.Get(0));
    serverApps.Start(Seconds(1.0));
    serverApps.Stop(Seconds(10.0));

    UdpEchoClientHelper echoClient1(wifiInterfaces.GetAddress(0), 21);
    echoClient1.SetAttribute("MaxPackets", UintegerValue(2));
    echoClient1.SetAttribute("Interval", TimeValue(Seconds(2.0)));
    echoClient1.SetAttribute("PacketSize", UintegerValue(512));
 
    ApplicationContainer clientApps1 = echoClient1.Install(statNodes.Get(3));
    clientApps1.Start(Seconds(3.0));
    clientApps1.Stop(Seconds(10.0));
 
 
    UdpEchoClientHelper echoClient2(wifiInterfaces.GetAddress(0), 21);
    echoClient2.SetAttribute("MaxPackets", UintegerValue(2));
    echoClient2.SetAttribute("Interval", TimeValue(Seconds(3.0)));
    echoClient2.SetAttribute("PacketSize", UintegerValue(512));
 
    ApplicationContainer clientApps2 = echoClient2.Install(statNodes.Get(4));
    clientApps2.Start(Seconds(2.0));
    clientApps2.Stop(Seconds(10.0));

 
    
 
    // Assigning static routing tables to all nodes to behave as ideal routers
    Ipv4GlobalRoutingHelper::PopulateRoutingTables();
 
    Simulator::Stop(Seconds(10.0));
 
// Setting up PacketTrace for Node 4 and AP device
    if (tracing)
    {
        phy.SetPcapDataLinkType(WifiPhyHelper::DLT_IEEE802_11_RADIO);
        phy.EnablePcap("Node4", staDevices.Get(4));
        phy.EnablePcap("apNode", apDevices.Get(0));
    }
    // Starting Simulation
    Simulator::Run();
    Simulator::Destroy();
 
    return 0;
}