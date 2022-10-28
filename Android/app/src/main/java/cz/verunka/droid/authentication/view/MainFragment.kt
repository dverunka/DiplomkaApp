package cz.verunka.droid.authentication.view

import android.os.Bundle
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.databinding.DataBindingUtil
import androidx.fragment.app.Fragment
import androidx.lifecycle.ViewModelProvider
import androidx.navigation.Navigation
import cz.verunka.droid.authentication.R
import cz.verunka.droid.authentication.databinding.MainFragmentBinding
import cz.verunka.droid.authentication.viewModel.MainViewModel


class MainFragment : Fragment() {

    private val viewModel: MainViewModel by lazy {
        ViewModelProvider(this)[MainViewModel::class.java]
    }

    private val navController = Navigation.findNavController(activity!!, R.id.main_navigation)

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {

        val binding: MainFragmentBinding = DataBindingUtil.inflate(
            inflater,
            R.layout.main_fragment,
            container,
            false
        )

        binding.lifecycleOwner = viewLifecycleOwner
        binding.viewModel = viewModel

        binding.mainButtonLogIn.setOnClickListener {

            Log.i("MainFragment", "Log In pressed")
            navController.navigate(R.id.tabs_root_destination)
        }

        return binding.root
    }

    companion object {
        fun newInstance() = MainFragment()
    }
}
