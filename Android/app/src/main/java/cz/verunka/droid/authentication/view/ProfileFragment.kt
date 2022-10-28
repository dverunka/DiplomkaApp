package cz.verunka.droid.authentication.view

import android.content.Intent
import android.net.Uri
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.databinding.DataBindingUtil
import androidx.fragment.app.Fragment
import androidx.lifecycle.ViewModelProvider
import cz.verunka.droid.authentication.R
import cz.verunka.droid.authentication.databinding.ProfileFragmentBinding
import cz.verunka.droid.authentication.viewModel.ProfileViewModel

class ProfileFragment : Fragment() {

    private val viewModel: ProfileViewModel by lazy {
        ViewModelProvider(this)[ProfileViewModel::class.java]
    }

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        val binding: ProfileFragmentBinding = DataBindingUtil.inflate(
            inflater,
            R.layout.profile_fragment,
            container,
            false
        )

        binding.lifecycleOwner = viewLifecycleOwner
        binding.viewModel = viewModel

        binding.profileTextName.text = viewModel.user.name
        binding.profileTextHometown.text = viewModel.user.hometown
        binding.profileTextEmail.text = viewModel.user.email
        binding.profileTextEmail.setOnClickListener {
            val email = viewModel.user.email
            openUrl("mailto:$email")
        }

        binding.profileTextGithubName.text = viewModel.user.gitHubName
        binding.profileButtonGithub.setOnClickListener {
            openUrl(viewModel.user.gitHubUrl)
        }

        binding.profileTextSteamName.text = viewModel.user.steamName
        binding.profileButtonSteam.setOnClickListener {
            openUrl(viewModel.user.steamUrl)
        }

        binding.profileTextLoremIpsum.text = viewModel.loremIpsum

        return binding.root
    }

    private fun openUrl(url: String) {
        val openURL = Intent(Intent.ACTION_VIEW)
        openURL.data = Uri.parse(url)
        startActivity(openURL)
    }
}
