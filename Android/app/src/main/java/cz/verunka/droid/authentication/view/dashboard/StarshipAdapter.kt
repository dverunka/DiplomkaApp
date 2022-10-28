package cz.verunka.droid.authentication.view.dashboard

import android.content.Context
import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.databinding.DataBindingUtil
import androidx.recyclerview.widget.RecyclerView
import cz.verunka.droid.authentication.R
import cz.verunka.droid.authentication.databinding.StarshipCardViewBinding
import cz.verunka.droid.authentication.model.Starship

class StarshipAdapter(val context: Context?) :
    RecyclerView.Adapter<StarshipAdapter.StarshipViewHolder>() {

    var starshipList: List<Starship> = ArrayList()

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): StarshipViewHolder {

        val viewBinding: StarshipCardViewBinding = DataBindingUtil.inflate(
            LayoutInflater.from(parent.context),
            R.layout.starship_card_view, parent, false
        )
        return StarshipViewHolder(viewBinding)
    }

    override fun getItemCount(): Int {
        return starshipList.size
    }

    override fun onBindViewHolder(holder: StarshipViewHolder, position: Int) {
        holder.onBind(position)
    }

    fun setStarships(starships: List<Starship>) {
        this.starshipList = starships
        notifyDataSetChanged()
    }

    inner class StarshipViewHolder(private val viewBinding: StarshipCardViewBinding) :
        RecyclerView.ViewHolder(viewBinding.root) {

        fun onBind(position: Int) {

            val item = starshipList[position]
            viewBinding.starship = item
        }
    }
}
