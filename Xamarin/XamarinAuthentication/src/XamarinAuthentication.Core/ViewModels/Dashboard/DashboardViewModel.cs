using System.Threading.Tasks;
using MvvmCross.Logging;
using MvvmCross.Navigation;
using MvvmCross.ViewModels;
using XamarinAuthentication.Core.Models;
using XamarinAuthentication.Core.Services.DataService;

namespace XamarinAuthentication.Core.ViewModels.Dashboard
{
	public class DashboardViewModel: MvxNavigationViewModel
	{
		private readonly IExampleDataService _exampleDataService;

		public MvxObservableCollection<string> Fighters { get; set; } = new MvxObservableCollection<string>();

		public MvxObservableCollection<Starship> Starships { get; set; } = new MvxObservableCollection<Starship>();

		public DashboardViewModel(IMvxLogProvider logProvider, IMvxNavigationService navigationService, IExampleDataService exampleDataService) 
			: base(logProvider, navigationService)
		{
			this._exampleDataService = exampleDataService;
		}

		public override Task Initialize()
		{
			this.Fighters.AddRange(this._exampleDataService.GetFighters());
			this.Starships.AddRange(this._exampleDataService.GetStarships());

			return base.Initialize();
		}
	}
}