package cz.verunka.droid.authentication.services.repo

import androidx.annotation.DrawableRes
import cz.verunka.droid.authentication.R
import cz.verunka.droid.authentication.model.Starship
import cz.verunka.droid.authentication.model.User

class ExampleRepository {

    private val _user: User = User(
        name = "Veronika",
        hometown = "Brno",
        email = "v1_dzurikova@utb.cz",
        photo = "R.drawable.girl",
        gitHubUrl = "https://github.com/lightsaberka",
        gitHubName = "lightsaberka",
        steamUrl = "https://store.steampowered.com/app/743360/Haste_Heist/",
        steamName = "Haste Heist"
    )

    private val _loremIpsum: String =
        "These are the voyages of the Starship Enterprise.\n\nIts continuing mission, " +
                "to explore strange new worlds, to seek out new life and new civilizations, " +
                "to boldly go where no one has gone before. We need to neutralize the homing signal. " +
                "Each unit has total environmental control, gravity, temperature, atmosphere, light, " +
                "in a protective field. Sensors show energy readings in your area. " +
                "We had a forced chamber explosion in the resonator coil. Field strength has increased by 3,000 percent. " +
                "\n\nResistance is futile."

    private val _fighters: List<Int> =
        listOf(
            R.drawable.tiefighter,
            R.drawable.xwing,
            R.drawable.falcon,
            R.drawable.puddlejumper,
            R.drawable.teltak,
            R.drawable.dresselhaus,
            R.drawable.starbug
        )

    private val _starships: List<Starship> = listOf(
        Starship("USS Enterprise", "NCC-1701 (Shuttlecraft)", "2245", "288.646 m", R.drawable.enterprise),
        Starship("USS Sulaco", "8 UD-4L (Utility dropship)", "2122", "385 m", R.drawable.sulaco),
        Starship("USS Daedalus", "BC-304 (Interstellar battlecruiser)", "2005", "195 m", R.drawable.daedalus)
    )


    fun getUser(): User {
        return this._user
    }

    fun getLoremIpsum(): String {
        return this._loremIpsum
    }

    fun getFighters(): List<Int> {
        return this._fighters
    }

    fun getStarships(): List<Starship> {
        return this._starships
    }
}
