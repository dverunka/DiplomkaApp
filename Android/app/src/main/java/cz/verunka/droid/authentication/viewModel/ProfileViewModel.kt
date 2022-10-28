package cz.verunka.droid.authentication.viewModel

import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import cz.verunka.droid.authentication.model.User
import cz.verunka.droid.authentication.services.repo.ExampleRepository

class ProfileViewModel() : ViewModel() {

    private val repo = ExampleRepository()

    lateinit var user: User
    lateinit var loremIpsum: String

    init {
        getUser()
        getLoremIpsum()
    }

    private fun getUser() {
        this.user = repo.getUser()
    }

    private fun getLoremIpsum() {
        this.loremIpsum = repo.getLoremIpsum()
    }
}
