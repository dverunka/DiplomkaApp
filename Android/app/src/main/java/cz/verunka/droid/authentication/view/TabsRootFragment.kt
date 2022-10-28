package cz.verunka.droid.authentication.view

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.databinding.DataBindingUtil
import androidx.fragment.app.Fragment
import cz.verunka.droid.authentication.R
import cz.verunka.droid.authentication.databinding.TabsRootFragmentBinding

class TabsRootFragment : Fragment() {

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        val binding: TabsRootFragmentBinding = DataBindingUtil.inflate(
            inflater,
            R.layout.tabs_root_fragment,
            container,
            false
        )

        binding.lifecycleOwner = viewLifecycleOwner

        binding.tabsNavigationView.setOnNavigationItemReselectedListener {
            when (it.itemId) {
                R.id.menu_dashboard -> {
                    loadFragment(DashboardFragment())
                    return@setOnNavigationItemReselectedListener
                }
                R.id.menu_profile -> {
                    loadFragment(ProfileFragment())
                    return@setOnNavigationItemReselectedListener
                }
            }
        }

        return binding.root
    }

    private fun loadFragment(fragment: Fragment) {
        val transaction = parentFragmentManager.beginTransaction()
        transaction.replace(R.id.tabs_layout_container, fragment)
        transaction.addToBackStack(null)
        transaction.commit()
    }
}
