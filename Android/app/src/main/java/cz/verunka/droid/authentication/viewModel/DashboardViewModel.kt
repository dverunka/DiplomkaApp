package cz.verunka.droid.authentication.viewModel

import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import cz.verunka.droid.authentication.model.Starship

class DashboardViewModel : ViewModel() {

    private val _fighters = MutableLiveData<List<String>>()
    private val _starships = MutableLiveData<List<Starship>>()

    fun getFighters() {
        //this._fighters.value = repo.getFighters()
    }

    fun getStarships() {
        //this._starships.value = repo.getStarships()
    }
}
