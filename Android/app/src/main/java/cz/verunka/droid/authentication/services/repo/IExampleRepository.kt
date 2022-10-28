package cz.verunka.droid.authentication.services.repo

import cz.verunka.droid.authentication.model.Starship
import cz.verunka.droid.authentication.model.User

interface IExampleRepository {

    /**
     * Generates and returns sample user.
     * @return Sample user
     */
    suspend fun getUser(): User

    /**
     * Returns sample lorem ipsum text.
     * @return Sample lorem ipsum text
     */
    suspend fun getLoremIpsum(): String

    /**
     * Generates and returns sample fighters.
     * @return Sample fighters
     */
    suspend fun getFighters(): List<String>

    /**
     * Generates and returns sample starships.
     * @return Sample starships
     */
    suspend fun getStarships(): List<Starship>
}
