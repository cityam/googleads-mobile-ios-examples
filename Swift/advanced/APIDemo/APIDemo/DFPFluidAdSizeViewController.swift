//
//  Copyright (C) 2016 Google, Inc.
//
//  DFPFluidAdSizeViewController.swift
//  APIDemo
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import GoogleMobileAds
import UIKit

/// DFP - Fluid Ad Size
/// Demonstrates using the Fluid ad size - an ad size that spans the full width of its container,
/// with a height dynamically determined by the ad.
class DFPFluidAdSizeViewController: UIViewController {

  /// The DFP banner view.
  @IBOutlet weak var bannerView: DFPBannerView!

  override func viewDidLoad() {
    super.viewDidLoad()
    self.bannerView.adUnitID = Constants.DFPFluidAdSizeAdUnitID
    self.bannerView.rootViewController = self
    self.bannerView.adSize = kGADAdSizeFluid
    self.bannerView.loadRequest(DFPRequest())
  }

}
