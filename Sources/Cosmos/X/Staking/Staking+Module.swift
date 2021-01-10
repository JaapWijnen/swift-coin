import ABCI
import JSON

// AppModuleBasic defines the basic application module used by the staking module.
public class StakingAppModuleBasic: AppModuleBasic {
    public init() {}
    
    public let name: String = StakingKeys.moduleName
    
    public func register(codec: Codec) {
        // TODO: Implement
        fatalError()
    }
    
    public func defaultGenesis() -> JSON? {
        // TODO: Find a way to encode directly to JSON
        let data = Codec.stakingCodec.mustMarshalJSON(value: StakingGenesisState.default)
        return Codec.stakingCodec.mustUnmarshalJSON(data: data)
    }
    
    public func validateGenesis(json: JSON) throws {
        // TODO: Implement
        fatalError()
    }
}

//____________________________________________________________________________

// AppModule implements an application module for the staking module.
public final class StakingAppModule: StakingAppModuleBasic, AppModule {
    let keeper: StakingKeeper
    let accountKeeper: AccountKeeper
    let supplyKeeper: SupplyKeeper
     
    public init(
        keeper: StakingKeeper,
        accountKeeper: AccountKeeper,
        supplyKeeper: SupplyKeeper
    ) {
        self.keeper = keeper
        self.accountKeeper = accountKeeper
        self.supplyKeeper = supplyKeeper
    }
    
    // RegisterInvariants registers the staking module invariants.
    public func registerInvariants(in invariantRegistry: InvariantRegistry) {
        keeper.registerInvariants(in: invariantRegistry)
    }

    // routes
    public var route: String {
        StakingKeys.routerKey
    }

    public func makeHandler() -> Handler? {
        keeper.makeHandler()
    }
    
    public var querierRoute: String {
        StakingKeys.querierRoute
    }
    
    public func makeQuerier() -> Querier? {
        keeper.makeQuerier()
    }

    // ABCI
    public func beginBlock(request: Request, beginBlockRequest: RequestBeginBlock) {
        fatalError()
    }
    
    public func endBlock(request: Request, endBlockRequest: RequestEndBlock) -> [ValidatorUpdate] {
        fatalError()
    }
   
    // Genesis
    public func initGenesis(request: Request, json: JSON) -> [ValidatorUpdate] {
        fatalError()
    }
    
    public func exportGenesis(request: Request) -> JSON {
        fatalError()
    }
}

