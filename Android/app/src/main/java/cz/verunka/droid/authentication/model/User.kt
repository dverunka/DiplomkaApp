package cz.verunka.droid.authentication.model

data class User(
    val name: String,
    val hometown: String,
    val email: String,
    val photo: String,
    val gitHubUrl: String,
    val gitHubName: String,
    val steamUrl: String,
    val steamName: String
) {}
