package cz.verunka.droid.authentication.viewModel

import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import cz.verunka.droid.authentication.model.User

class ProfileViewModel() : ViewModel() {

    private val _user = MutableLiveData<User>()
    private val _loremIpsum = MutableLiveData<String>()

    fun getUser() {
        //this._user.value = repo.getUser()
    }

    fun getLoremIpsum() {
        //this._loremIpsum.value = repo.getLoremIpsum()
    }
}
