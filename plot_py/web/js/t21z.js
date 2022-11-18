function mmLoadMenus() {
  if (window.menu_3prod) return;


   window.menu_time = new Menu("root",90,16,"Arial, Helvetica, sans-serif",10,"#111111","#111111","#DDDDDD","#6E6BC2","left","middle",3,0,500,-5,7,true,true,true,5,true,true);
   menu_time.addMenuItem("09 Z", "location='../visb/cnv_com_09z_prb1.htm'");
   menu_time.addMenuItem("21 Z", "location='../visb/cnv_com_21z_prb1.htm'");


  window.menu_restr = new Menu("root",120,16,"Arial, Helvetica, sans-serif",10,"#111111","#111111","#DDDDDD","#5E5BA3","left","middle",3,0,500,5,0,true,true,true,5,true,true);
  menu_restr.addMenuItem("LIFR prob","location='../visb/cnv_com_21z_prb1.htm'");
  menu_restr.addMenuItem("IFR prob","location='../visb/cnv_com_21z_prb2.htm'");
  menu_restr.addMenuItem("MVFR prob","location='../visb/cnv_com_21z_prb3.htm'");
  menu_restr.addMenuItem("VFR prob","location='../visb/cnv_com_21z_prb4.htm'");

  window.menu_visb = new Menu("root",120,16,"Arial, Helvetica, sans-serif",10,"#111111","#111111","#DDDDDD","#5E5BA3","left","middle",3,0,500,5,0,true,true,true,5,true,true);
  menu_visb.addMenuItem("Visbibility mean",        "location='../visb/visb0m_com_21z.htm'");
  menu_visb.addMenuItem("Visibility < 0.5 mile prob", "location='../fog/visb_com_21z_prb500.htm'");
  menu_visb.addMenuItem("Visibility < 1 mile prob", "location='../fog/visb_com_21z_prb1000.htm'");
  menu_visb.addMenuItem("Visibility < 3 miles prob", "location='../fog/visb_com_21z_prb2000.htm'");
  menu_visb.addMenuItem("Visibility < 5 miles prob", "location='../fog/visb_com_21z_prb3000.htm'");

  window.menu_cnv = new Menu("root",120,16,"Arial, Helvetica, sans-serif",10,"#111111","#111111","#DDDDDD","#5E5BA3","left","middle",3,0,500,5,0,true,true,true,5,true,true);
  menu_cnv.addMenuItem("Ceiling mean",    "location='../visb/ceil_com_21z.htm'");
  menu_cnv.addMenuItem("Cloud top mean",    "location='../fog/ctop_com_21z.htm'");
  menu_cnv.addMenuItem("Ceiling <  500 ft prob",  "location='../fog/ceil_com_21z_prb500.htm'");
  menu_cnv.addMenuItem("Ceiling < 1000 ft prob", "location='../fog/ceil_com_21z_prb1000.htm'");
  menu_cnv.addMenuItem("Ceiling < 2000 ft prob", "location='../fog/ceil_com_21z_prb2000.htm'");
  menu_cnv.addMenuItem("Ceiling < 3000 ft prob", "location='../fog/ceil_com_21z_prb3000.htm'");
  menu_cnv.addMenuItem("Ceiling < 4500 ft prob", "location='../fog/ceil_com_21z_prb4500.htm'");

  window.menu_cloud = new Menu("root",120,16,"Arial, Helvetica, sans-serif",10,"#111111","#111111","#DDDDDD","#5E5BA3","left","middle",3,0,500,5,0,true,true,true,5,true,true);
  menu_cloud.addMenuItem("Total mean","location='../cloud/cld_com_21z_mean.htm'");
  menu_cloud.addMenuItem("Max mean","location='../cloud/cld_com_21z_max.htm'");
  menu_cloud.addMenuItem("Min mean","location='../cloud/cld_com_21z_min.htm'");
  menu_cloud.addMenuItem("Clear sky prob", "location='../cloud/cld_com_21z_prb1.htm'");
  menu_cloud.addMenuItem("Scatr sky prob", "location='../cloud/cld_com_21z_prb2.htm'");
  menu_cloud.addMenuItem("Broken sky prob", "location='../cloud/cld_com_21z_prb3.htm'");
  menu_cloud.addMenuItem("Overcast prob", "location='../cloud/cld_com_21z_prb4.htm'");
  
  window.menu_w10m = new Menu("root",120,16,"Arial, Helvetica, sans-serif",10,"#111111","#111111","#DDDDDD","#6E6BC2","left","middle",3,0,500,-5,7,true,true,true,5,true,true);
  menu_w10m.addMenuItem("Speed mean","location='../w10m/w10m_com_21z_mean.htm'");
  menu_w10m.addMenuItem("Direction mean","location='../w10m/w10m_com_21z_dir.htm'");
  menu_w10m.addMenuItem(" >10knt prob","location='../w10m/w10m_com_21z_prb10.htm'");
  menu_w10m.addMenuItem(" >20knt prob","location='../w10m/w10m_com_21z_prb20.htm'");
  menu_w10m.addMenuItem(" >30knt prob","location='../w10m/w10m_com_21z_prb30.htm'");

  window.menu_llws = new Menu("root",120,16,"Arial, Helvetica, sans-serif",10,"#111111","#111111","#DDDDDD","#6E6BC2","left","middle",3,0,500,-5,7,true,true,true,5,true,true);
  menu_llws.addMenuItem("0-2000ft mean", "location='../wshr/shr_21z_2000ft.htm'");
  menu_llws.addMenuItem("Severe prob", "location='../wshr/shr_21z_prb.htm'");

   window.menu_conv = new Menu("root",120,16,"Arial, Helvetica, sans-serif",10,"#111111","#111111","#DDDDDD","#6E6BC2","left","middle",3,0,500,-5,7,true,true,true,5,true,true);
  menu_conv.addMenuItem("Cloud (no RSM)", "location='../conv/conv_com_21z.htm'");
  menu_conv.addMenuItem("Speed&dir", "location='../conv/storm_com_21z.htm'");

   window.menu_jet_34 = new Menu("34000 ft",120,16,"Arial, Helvetica, sans-serif",10,"#111111","#111111","#DDDDDD","#6E6BC2","left","middle",3,0,500,-5,7,true,true,true,5,true,true);
  menu_jet_34.addMenuItem("> 60 knots prob", "location='../wind/wind_com_21z_250mb_30.htm'");
  menu_jet_34.addMenuItem("> 80 knots prob", "location='../wind/wind_com_21z_250mb_40.htm'");
  menu_jet_34.addMenuItem(">100 knots prob", "location='../wind/wind_com_21z_250mb_50.htm'");

   window.menu_jet_18 = new Menu("18000 ft",120,16,"Arial, Helvetica, sans-serif",10,"#111111","#111111","#DDDDDD","#6E6BC2","left","middle",3,0,500,-5,7,true,true,true,5,true,true);
  menu_jet_18.addMenuItem("> 60 knots prob", "location='../wind/wind_com_21z_500mb_30.htm'");
  menu_jet_18.addMenuItem("> 80 knots prob", "location='../wind/wind_com_21z_500mb_40.htm'");
  menu_jet_18.addMenuItem(">100 knots prob", "location='../wind/wind_com_21z_500mb_50.htm'");

   window.menu_jet_45 = new Menu("4500 ft",120,16,"Arial, Helvetica, sans-serif",10,"#111111","#111111","#DDDDDD","#6E6BC2","left","middle",3,0,500,-5,7,true,true,true,5,true,true);
  menu_jet_45.addMenuItem("> 20 knots prob", "location='../wind/wind_com_21z_850mb_10.htm'");
  menu_jet_45.addMenuItem("> 40 knots prob", "location='../wind/wind_com_21z_850mb_20.htm'");
  menu_jet_45.addMenuItem("> 60 knots prob", "location='../wind/wind_com_21z_850mb_30.htm'");

  window.menu_jet = new Menu("root",120,16,"Arial, Helvetica, sans-serif",10,"#111111","#111111","#DDDDDD","#6E6BC2","left","middle",3,0,500,3,3,true,true,true,5,true,true);
  menu_jet.addMenuItem(menu_jet_34,"location=''");
  menu_jet.addMenuItem(menu_jet_18,"location=''");
  menu_jet.addMenuItem(menu_jet_45,"location=''");
  menu_jet.childMenuIcon="../../gif_js/arrows.gif";

  window.menu_icng = new Menu("root",120,16,"Arial, Helvetica, sans-serif",10,"#111111","#111111","#DDDDDD","#6E6BC2","left","middle",3,0,500,3,3,true,true,true,5,true,true);
  menu_icng.addMenuItem("FL240", "location='../icng/icng_com_21z_FL240.htm'");
  menu_icng.addMenuItem("FL180", "location='../icng/icng_com_21z_FL180.htm'");
  menu_icng.addMenuItem("FL150", "location='../icng/icng_com_21z_FL150.htm'");
  menu_icng.addMenuItem("FL120", "location='../icng/icng_com_21z_FL120.htm'");
  menu_icng.addMenuItem("FL090", "location='../icng/icng_com_21z_FL090.htm'");
  menu_icng.addMenuItem("FL060", "location='../icng/icng_com_21z_FL060.htm'");
  menu_icng.addMenuItem("FL030", "location='../icng/icng_com_21z_FL030.htm'");
  menu_icng.addMenuItem("FL000", "location='../icng/icng_com_21z_FL000.htm'");

  window.menu_turb_lgt = new Menu("Light-middle",120,16,"Arial, Helvetica, sans-serif",10,"#111111","#111111","#DDDDDD","#6E6BC2","left","middle",3,0,500,3,3,true,true,true,5,true,true);
  menu_turb_lgt.addMenuItem("FL420-FL390", "location='../turb/turb_com_21z_FL420_1.htm'");
  menu_turb_lgt.addMenuItem("FL390-FL360", "location='../turb/turb_com_21z_FL390_1.htm'");
  menu_turb_lgt.addMenuItem("FL360-FL330", "location='../turb/turb_com_21z_FL360_1.htm'");
  menu_turb_lgt.addMenuItem("FL330-FL300", "location='../turb/turb_com_21z_FL330_1.htm'");
  menu_turb_lgt.addMenuItem("FL300-FL270", "location='../turb/turb_com_21z_FL300_1.htm'");
  menu_turb_lgt.addMenuItem("FL270-FL240", "location='../turb/turb_com_21z_FL270_1.htm'");
  menu_turb_lgt.addMenuItem("FL240-FL210", "location='../turb/turb_com_21z_FL240_1.htm'");
  menu_turb_lgt.addMenuItem("FL210-FL180", "location='../turb/turb_com_21z_FL210_1.htm'");
 
  window.menu_turb_mdt = new Menu("Middle",120,16,"Arial, Helvetica, sans-serif",10,"#111111","#111111","#DDDDDD","#6E6BC2","left","middle",3,0,500,3,3,true,true,true,5,true,true);
  menu_turb_mdt.addMenuItem("FL420-FL390", "location='../turb/turb_com_21z_FL420_2.htm'");
  menu_turb_mdt.addMenuItem("FL390-FL360", "location='../turb/turb_com_21z_FL390_2.htm'");
  menu_turb_mdt.addMenuItem("FL360-FL330", "location='../turb/turb_com_21z_FL360_2.htm'");
  menu_turb_mdt.addMenuItem("FL330-FL300", "location='../turb/turb_com_21z_FL330_2.htm'");
  menu_turb_mdt.addMenuItem("FL300-FL270", "location='../turb/turb_com_21z_FL300_2.htm'");
  menu_turb_mdt.addMenuItem("FL270-FL240", "location='../turb/turb_com_21z_FL270_2.htm'");
  menu_turb_mdt.addMenuItem("FL240-FL210", "location='../turb/turb_com_21z_FL240_2.htm'");
  menu_turb_mdt.addMenuItem("FL210-FL180", "location='../turb/turb_com_21z_FL210_2.htm'");

  window.menu_turb_svr = new Menu("Severe",120,16,"Arial, Helvetica, sans-serif",10,"#111111","#111111","#DDDDDD","#6E6BC2","left","middle",3,0,500,3,3,true,true,true,5,true,true);
  menu_turb_svr.addMenuItem("FL420-FL390", "location='../turb/turb_com_21z_FL420_3.htm'");
  menu_turb_svr.addMenuItem("FL390-FL360", "location='../turb/turb_com_21z_FL390_3.htm'");
  menu_turb_svr.addMenuItem("FL360-FL330", "location='../turb/turb_com_21z_FL360_3.htm'");
  menu_turb_svr.addMenuItem("FL330-FL300", "location='../turb/turb_com_21z_FL330_3.htm'");
  menu_turb_svr.addMenuItem("FL300-FL270", "location='../turb/turb_com_21z_FL300_3.htm'");
  menu_turb_svr.addMenuItem("FL270-FL240", "location='../turb/turb_com_21z_FL270_3.htm'");
  menu_turb_svr.addMenuItem("FL240-FL210", "location='../turb/turb_com_21z_FL240_3.htm'");
  menu_turb_svr.addMenuItem("FL210-FL180", "location='../turb/turb_com_21z_FL210_3.htm'");
 
  window.menu_turb  = new Menu("root",120,16,"Arial, Helvetica, sans-serif",10,"#111111","#111111","#DDDDDD","#6E6BC2","left","middle",3,0,500,3,3,true,true,true,5,true,true);
  menu_turb.addMenuItem(menu_turb_lgt,"location=''");
  menu_turb.addMenuItem(menu_turb_mdt,"location=''");
  menu_turb.addMenuItem(menu_turb_svr,"location=''"); 
  menu_turb.childMenuIcon="../../gif_js/arrows.gif";


   window.menu_prcp = new Menu("root",120,16,"Arial, Helvetica, sans-serif",10,"#111111","#111111","#DDDDDD","#6E6BC2","left","middle",3,0,500,3,3,true,true,true,5,true,true);
  menu_prcp.addMenuItem("Rain prob", "location='../prcp/prcp_com_21z_prb1.htm'");
  menu_prcp.addMenuItem("Snow prob", "location='../prcp/prcp_com_21z_prb2.htm'");
  menu_prcp.addMenuItem("Frozen rain prob", "location='../prcp/prcp_com_21z_prb3.htm'");

 window.menu_fog = new Menu("root",120,16,"Arial, Helvetica, sans-serif",10,"#111111","#111111","#DDDDDD","#6E6BC2","left","middle",3,0,500,3,3,true,true,true,5,true,true);
  menu_fog.addMenuItem("Fog prob", "location='../fog/fog_com_21z_prb.htm'");
  menu_fog.addMenuItem("Fog LWC",  "location='../fog/fog_com_21z_lwc.htm'");

  window.menu_trop  = new Menu("root",120,16,"Arial, Helvetica, sans-serif",10,"#111111","#111111","#DDDDDD","#6E6BC2","left","middle",3,0,500,3,3,true,true,true,5,true,true);
  menu_trop.addMenuItem("Hight mean", "location='../trop/trphgt_com_21z.htm'"); 
  menu_trop.addMenuItem("Temperature mean", "location='../trop/trptmp_com_21z.htm'"); 

   window.menu_frzh = new Menu("root",120,16,"Arial, Helvetica, sans-serif",10,"#111111","#111111","#DDDDDD","#6E6BC2","left","middle",3,0,500,3,3,true,true,true,5,true,true);
  menu_frzh.addMenuItem("Hight mean", "location='../frzh/frzhgt_com_21z.htm'");

  menu_frzh.writeMenus();

} // mmLoadMenus()

