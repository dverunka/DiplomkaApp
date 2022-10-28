package cz.verunka.droid.authentication.view.dashboard

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.databinding.DataBindingUtil
import androidx.fragment.app.Fragment
import androidx.lifecycle.ViewModelProvider
import androidx.recyclerview.widget.LinearLayoutManager
import cz.verunka.droid.authentication.R
import cz.verunka.droid.authentication.databinding.DashboardFragmentBinding
import cz.verunka.droid.authentication.viewModel.DashboardViewModel
import androidx.recyclerview.widget.PagerSnapHelper

import androidx.recyclerview.widget.SnapHelper




class DashboardFragment : Fragment() {

    private val viewModel: DashboardViewModel by lazy {
        ViewModelProvider(this)[DashboardViewModel::class.java]
    }

    private lateinit var binding: DashboardFragmentBinding

    private lateinit var fighterAdapter: FighterAdapter
    private lateinit var starshipAdapter: StarshipAdapter

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        binding = DataBindingUtil.inflate(
            inflater,
            R.layout.dashboard_fragment,
            container,
            false
        )

        binding.lifecycleOwner = viewLifecycleOwner
        binding.viewModel = viewModel

        // bind fighters
        fighterAdapter = FighterAdapter(context)
        binding.dashboardRecyclerFighters.layoutManager = LinearLayoutManager(
            activity,
            LinearLayoutManager.HORIZONTAL,
            false
        )
        binding.dashboardRecyclerFighters.adapter = fighterAdapter
        binding.dashboardRecyclerFighters.isNestedScrollingEnabled = false

        fighterAdapter.setFighters(viewModel.fighters)

        // bind starships
        starshipAdapter = StarshipAdapter(context)
        binding.dashboardRecyclerStarships.layoutManager = LinearLayoutManager(
            activity,
            LinearLayoutManager.HORIZONTAL,
            false
        )
        binding.dashboardRecyclerStarships.adapter = starshipAdapter
        binding.dashboardRecyclerStarships.isNestedScrollingEnabled = false

        starshipAdapter.setStarships(viewModel.starships)

        // snap starship cards
        val snapHelper: SnapHelper = PagerSnapHelper()
        snapHelper.attachToRecyclerView(binding.dashboardRecyclerStarships);

        return binding.root
    }
}
