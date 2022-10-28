package cz.verunka.droid.authentication.model

import androidx.annotation.DrawableRes
import androidx.annotation.StringRes
import java.io.Serializable

data class Starship(
    val name: String,
    val type: String,
    val year: String,
    val length: String,
    @DrawableRes
    val photo: Int
): Serializable
