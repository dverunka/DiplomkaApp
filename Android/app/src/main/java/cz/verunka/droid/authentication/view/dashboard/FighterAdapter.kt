package cz.verunka.droid.authentication.view.dashboard

import android.content.Context
import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.databinding.DataBindingUtil
import androidx.recyclerview.widget.RecyclerView
import cz.verunka.droid.authentication.R
import cz.verunka.droid.authentication.databinding.FighterCardViewBinding

class FighterAdapter(val context: Context?) :
    RecyclerView.Adapter<FighterAdapter.FighterViewHolder>() {

    var fightersList: List<Int> = ArrayList()

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): FighterViewHolder {

        val viewBinding: FighterCardViewBinding = DataBindingUtil.inflate(
            LayoutInflater.from(parent.context),
            R.layout.fighter_card_view, parent, false
        )
        return FighterViewHolder(viewBinding)
    }

    override fun getItemCount(): Int {
        return fightersList.size
    }

    override fun onBindViewHolder(holder: FighterViewHolder, position: Int) {
        holder.onBind(position)
    }

    fun setFighters(fighters: List<Int>) {
        this.fightersList = fighters
        notifyDataSetChanged()
    }

    inner class FighterViewHolder(private val viewBinding: FighterCardViewBinding) :
        RecyclerView.ViewHolder(viewBinding.root) {

        fun onBind(position: Int) {

            val item = fightersList[position]
            viewBinding.fighter = item
        }
    }
}
