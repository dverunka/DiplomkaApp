package cz.verunka.droid.authentication.services.repo

import cz.verunka.droid.authentication.model.Starship
import cz.verunka.droid.authentication.model.User

class ExampleRepository : IExampleRepository {

    private val _user: User = User(
        name = "Veronika",
        hometown = "Brno",
        email = "v1_dzurikova@utb.cz",
        photo = "R.drawable.girl",
        gitHubUrl = "https://github.com/lightsaberka",
        steamUrl = "https://store.steampowered.com/app/743360/Haste_Heist/"
    )

    private val _loremIpsum: String =
        "These are the voyages of the Starship Enterprise.\n\nIts continuing mission, " +
                "to explore strange new worlds, to seek out new life and new civilizations, " +
                "to boldly go where no one has gone before. We need to neutralize the homing signal. " +
                "Each unit has total environmental control, gravity, temperature, atmosphere, light, " +
                "in a protective field. Sensors show energy readings in your area. " +
                "We had a forced chamber explosion in the resonator coil. Field strength has increased by 3,000 percent. " +
                "\n\nResistance is futile."

    private val _fighters: List<String> = listOf("tiefighter", "xwing", "falcon", "puddlejumper", "teltak", "dresselhaus", "starbug")

    private val _starships: List<Starship> = listOf(
        Starship("USS Enterprise", "NCC-1701 (Shuttlecraft)", 2245, "288.646 m", "enterprise"),
        Starship("USS Sulaco", "8 UD-4L (Utility dropship)", 2122, "385 m", "sulaco"),
        Starship("USS Daedalus", "BC-304 (Interstellar battlecruiser)", 2005, "195 m", "daedalus")
    )

    override suspend fun getUser(): User {
        return this._user
    }

    override suspend fun getLoremIpsum(): String {
        return this._loremIpsum
    }

    override suspend fun getFighters(): List<String> {
        return this._fighters
    }

    override suspend fun getStarships(): List<Starship> {
        return this._starships
    }
}
