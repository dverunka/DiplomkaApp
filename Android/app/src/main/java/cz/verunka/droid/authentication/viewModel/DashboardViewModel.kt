package cz.verunka.droid.authentication.viewModel

import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import cz.verunka.droid.authentication.model.Starship
import cz.verunka.droid.authentication.services.repo.ExampleRepository

class DashboardViewModel : ViewModel() {

    private val repo = ExampleRepository()

    lateinit var fighters: List<Int>
    lateinit var starships: List<Starship>

    init {
        getFighters()
        getStarships()
    }

    private fun getFighters() {
        this.fighters = repo.getFighters()
    }

    private fun getStarships() {
        this.starships = repo.getStarships()
    }
}
