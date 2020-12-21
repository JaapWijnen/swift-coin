import Tendermint
import Cosmos

extension NameServiceApp {
    // ExportAppStateAndValidators exports the state of the application for a genesis
    // file.
    public func exportAppStateAndValidators(
        forZeroHeight: Bool,
        jailWhiteList: [String]
    ) throws -> (RawMessage, [GenesisValidator]) {
        // TODO: Implement
        fatalError()
        
//        // as if they could withdraw from the start of the next block
//        ctx := app.NewContext(true, abci.Header{Height: app.LastBlockHeight()})
//
//        if forZeroHeight {
//            app.prepForZeroHeightGenesis(ctx, jailWhiteList)
//        }
//
//        genState := app.mm.ExportGenesis(ctx)
//        appState, err = codec.MarshalJSONIndent(app.cdc, genState)
//        if err != nil {
//            return nil, nil, err
//        }
//
//        validators = staking.WriteValidators(ctx, app.stakingKeeper)
//        return appState, validators, nil
    }

//    // prepare for fresh start at zero height
//    // NOTE zero height genesis is a temporary feature which will be deprecated
//    //      in favour of export at a block height
//    func prepForZeroHeightGenesis(ctx sdk.Context, jailWhiteList []string) {
//        applyWhiteList := false
//
//        //Check if there is a whitelist
//        if len(jailWhiteList) > 0 {
//            applyWhiteList = true
//        }
//
//        whiteListMap := make(map[string]bool)
//
//        for _, addr := range jailWhiteList {
//            _, err := sdk.ValAddressFromBech32(addr)
//            if err != nil {
//                log.Fatal(err)
//            }
//            whiteListMap[addr] = true
//        }
//
//        // this line is used by starport scaffolding # 1
//
//        // set context height to zero
//        height := ctx.BlockHeight()
//        ctx = ctx.WithBlockHeight(0)
//
//        // reinitialize all validators
//        app.stakingKeeper.IterateValidators(ctx, func(_ int64, val staking.ValidatorI) (stop bool) {
//            // this line is used by starport scaffolding # 2
//            return false
//        })
//
//        // this line is used by starport scaffolding # 3
//
//        // reset context height
//        ctx = ctx.WithBlockHeight(height)
//
//        /* Handle staking state. */
//
//        // iterate through redelegations, reset creation height
//        app.stakingKeeper.IterateRedelegations(ctx, func(_ int64, red staking.Redelegation) (stop bool) {
//            for i := range red.Entries {
//                red.Entries[i].CreationHeight = 0
//            }
//            app.stakingKeeper.SetRedelegation(ctx, red)
//            return false
//        })
//
//        // iterate through unbonding delegations, reset creation height
//        app.stakingKeeper.IterateUnbondingDelegations(ctx, func(_ int64, ubd staking.UnbondingDelegation) (stop bool) {
//            for i := range ubd.Entries {
//                ubd.Entries[i].CreationHeight = 0
//            }
//            app.stakingKeeper.SetUnbondingDelegation(ctx, ubd)
//            return false
//        })
//
//        // Iterate through validators by power descending, reset bond heights, and
//        // update bond intra-tx counters.
//        store := ctx.KVStore(app.keys[staking.StoreKey])
//        iter := sdk.KVStoreReversePrefixIterator(store, staking.ValidatorsKey)
//        counter := int16(0)
//
//        for ; iter.Valid(); iter.Next() {
//            addr := sdk.ValAddress(iter.Key()[1:])
//            validator, found := app.stakingKeeper.GetValidator(ctx, addr)
//            if !found {
//                panic("expected validator, not found")
//            }
//
//            validator.UnbondingHeight = 0
//            if applyWhiteList && !whiteListMap[addr.String()] {
//                validator.Jailed = true
//            }
//
//            app.stakingKeeper.SetValidator(ctx, validator)
//            counter++
//        }
//
//        iter.Close()
//
//        _ = app.stakingKeeper.ApplyAndReturnValidatorSetUpdates(ctx)
//    }
}