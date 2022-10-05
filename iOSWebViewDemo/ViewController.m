//
//  ViewController.m
//  iOSWebViewDemo
//
//  Created by j-kugizaki on 2022/09/28.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) WKWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CGRect rect = self.view.frame;
        
    WKWebViewConfiguration *config = [WKWebViewConfiguration new];
    config.allowsInlineMediaPlayback = YES;

    self.webView = [[WKWebView alloc] initWithFrame:rect configuration:config];
    self.webView.UIDelegate = self;
    self.webView.scrollView.scrollEnabled = NO;
    self.webView.scrollView.showsHorizontalScrollIndicator = NO;
    self.webView.scrollView.showsVerticalScrollIndicator = NO;
    self.webView.scrollView.bounces = NO;
    self.webView.scrollView.bouncesZoom = NO;
    self.webView.scrollView.alwaysBounceVertical = NO;
    self.webView.opaque = NO;
    if (@available(iOS 9.0, *)) {
        self.webView.allowsLinkPreview = NO;
    }
   
    [self.view addSubview:self.webView];
    [self.view sendSubviewToBack:self.webView];
}

- (IBAction)load:(id)sender {
// 直html
//    NSString *html = @""
//        "<html>"
//            "<body style=\"padding: 0; margin: 0;\">"
//                "<h1>iOS WebView Demo</h1>"
//                "<h2>video tag test</h2>"
//                "<div id=\"container\"></div>"
//                "<script type=\"text/javascript\">"
//                    "console.log(\"append video tag\");"
//
//                    "var divEl = document.getElementById(\"container\");"
//
////                    "var iframeEl = document.createElement(\"iframe\");"
//
//                    "var videoEl = document.createElement(\"video\");"
//                    "videoEl.setAttribute(\"width\", \"100%\");"
//                    "videoEl.setAttribute(\"playsinline\", \"true\");"
//                    "videoEl.setAttribute(\"autoplay\", \"true\");"
//                    "videoEl.muted = true;"
//                    "videoEl.volume = 0;"
//
//                    "var srcEl = document.createElement(\"source\");"
//                    "srcEl.setAttribute(\"src\", \"https://voyagegroup.github.io/FluctSDK-Hosting/resources/kei.mp4\");"
//                    "srcEl.setAttribute(\"type\", \"video/mp4\");"
//
//                    "videoEl.appendChild(srcEl);"
//                    "divEl.appendChild(videoEl);"
//                "</script>"
//            "</body>"
//        "</html>";
//    [self.webView loadHTMLString:html baseURL:NULL];

 // SDK上のp.js
    NSString *html = @""
        "<html>"
            "<head>"
                "<meta name=viewport\" content=\"width=300.000000, user-scalable=no,\">"
            "</head>"
            "<body style=\"padding: 0; margin: 0;\">"
                "<div class=\"fluct-unit-1000247075\" style=\"position: 'fixed';\"></div>"
                "<script type=\"text/javascript\" src=\"http://192.168.11.11:3000/dist/p.js\"></script>"
                "<script>"
                    "fluctAdScript.cmd.push(function (cmd){"
                        "cmd.fluctSDK.enableFeaturesForSDK({width: 300.000000, height: 250.000000});"
                        "cmd.setConfig({"
                            "dlvParams: {\"ifa\":\"00000000-0000-0000-0000-000000000000\",\"sppid\":\"B19FA4DD-CD84-4564-936A-890EFA8E57ED\",\"devicew\":\"1170\",\"ppid\":\"publisherProvidedID_test\",\"mimes\":\"video\\/mp4,video\\/x-m4v,video\\/quicktime,video\\/avi,video\\/3gpp2,video\\/3gpp\",\"ns\":\"wifi\",\"sv\":\"6.20.0\",\"skadn_version\":\"2.0\",\"apv\":\"1.0.0\",\"osv\":\"15.0\",\"api\":\"5,6\",\"deliveryType\":\"SDK\",\"gender\":\"M\",\"ifv\":\"4783BFD3-827A-4954-9922-15199603B851\",\"bundle\":\"jp.fluct.FluctSDKApp\",\"lmt\":\"0\",\"deviceh\":\"2532\",\"yob\":\"2002\",\"dm\":\"x86_64\",\"skadn_netids\":\"4fzdc2evr5.skadnetwork,4PFYVQ9L8R.skadnetwork,ydx93a7ass.skadnetwork,cg4yq2srnc.skadnetwork,488r3q3dtq.skadnetwork,866k9ut3g3.skadnetwork,v72qych5uu.skadnetwork,ludvb6z3bs.skadnetwork,mlmmfzh3r3.skadnetwork,lr83yxwka7.skadnetwork,c6k4g5qg8m.skadnetwork,wg4vff78zm.skadnetwork,238da6jt44.skadnetwork,3sh42y64q3.skadnetwork,f38h382jlk.skadnetwork,24t9a8vw3c.skadnetwork,hs6bdukanm.skadnetwork,prcb7njmu6.skadnetwork,m8dbw4sv7c.skadnetwork,CJ5566H2GA.skadnetwork,vutu7akeur.skadnetwork,5594BLYGHF.skadnetwork,v4nxqhlyqp.skadnetwork,wzmmz9fp6w.skadnetwork,yclnxrl5pm.skadnetwork,4468km3ulz.skadnetwork,v79kvwwj4g.skadnetwork,t38b2kh725.skadnetwork,7ug5zh24hu.skadnetwork,4mn522wn87.skadnetwork,cstr6suwn9.skadnetwork,xy9t38ct57.skadnetwork,5lm9lj6jb7.skadnetwork,zmvfpc5aq8.skadnetwork,9rd848q2bz.skadnetwork,7rz58n8ntl.skadnetwork,KBD757YWX3.skadnetwork,ejvt5qm6ak.skadnetwork,9t245vhmpl.skadnetwork,eh6m2bh4zr.skadnetwork,44jx6755aq.skadnetwork,tl55sbb4fm.skadnetwork,2U9PT9HC89.skadnetwork,5a6flpkh64.skadnetwork,8s468mfl3y.skadnetwork,glqzh8vgby.skadnetwork,424m5254lk.skadnetwork,KLF5C3L5U5.skadnetwork,ppxm28t8ap.skadnetwork,f73kdq92p3.skadnetwork,44n7hlldy6.skadnetwork,ecpz2srf59.skadnetwork,uw77j35x4d.skadnetwork,22mmun2rn5.skadnetwork,578prtvx9j.skadnetwork,4DZT52R2T5.skadnetwork,bvpn9ufa9b.skadnetwork,mtkv5xtk9e.skadnetwork,av6w8kgt66.skadnetwork,3rd42ekr43.skadnetwork\""
                        "}});"
                        "cmd.loadByGroupAndDisplay('1000150833', {1000247075: '.fluct-unit-1000247075'});"
                    "});"
                "</script>"
            "</body>"
        "</html>";

    [self.webView loadHTMLString:html baseURL:NULL];

    
// surfaceサンプル
//    NSURL *url = [NSURL URLWithString:@"http://192.168.11.11:3000/example/surface-js"];
//    NSURLRequest *request = [NSURLRequest requestWithURL:url];
//    [self.webView loadRequest:request];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
