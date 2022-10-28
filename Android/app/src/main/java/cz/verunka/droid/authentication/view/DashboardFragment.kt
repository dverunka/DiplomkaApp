package cz.verunka.droid.authentication.view

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import androidx.lifecycle.ViewModelProvider
import cz.verunka.droid.authentication.R
import cz.verunka.droid.authentication.viewModel.DashboardViewModel
import cz.verunka.droid.authentication.viewModel.MainViewModel

class DashboardFragment : Fragment() {

    private val viewModel: DashboardViewModel by lazy {
        ViewModelProvider(this)[DashboardViewModel::class.java]
    }

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        return inflater.inflate(R.layout.dashboard_fragment, container, false)
    }

    companion object {
        fun newInstance() = DashboardFragment()
    }
}
