package cz.verunka.droid.authentication.model

data class User(
    val name: String,
    val hometown: String,
    val email: String,
    val photo: String,
    val gitHubUrl: String,
    val steamUrl: String
) {}
