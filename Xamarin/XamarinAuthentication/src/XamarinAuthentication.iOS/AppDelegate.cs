using Foundation;
using MvvmCross.Forms.Platforms.Ios.Core;
using UIKit;
using XamarinAuthentication.UI;

namespace XamarinAuthentication.iOS
{
    [Register(nameof(AppDelegate))]
    public partial class AppDelegate : MvxFormsApplicationDelegate<Setup, Core.App, UI.App>
    {
        public override bool FinishedLaunching(UIApplication app, NSDictionary options)
        {
            global::Xamarin.Forms.Forms.Init();
            Xamarin.Forms.PancakeView.iOS.PancakeViewRenderer.Init();

            LoadApplication(new App());

            return base.FinishedLaunching(app, options);

        }
    }
}
