import ABCI

// AppModuleBasic defines the basic application module used by the supply module.
public class SupplyAppModuleBasic: AppModuleBasic {
    public init() {}
    
    public let name: String = SupplyKeys.moduleName
    
    public func register(codec: Codec) {
        // TODO: Implement
        fatalError()
    }
    
    public func defaultGenesis() -> RawMessage {
        // TODO: Implement
        fatalError()
    }
    
    public func validateGenesis(rawMessage: RawMessage) throws {
        // TODO: Implement
        fatalError()
    }
}

//____________________________________________________________________________
// AppModule implements an application module for the supply module.
public final class SupplyAppModule: SupplyAppModuleBasic, AppModule {
    let keeper: SupplyKeeper
    let accountKeeper: AccountKeeper
    
    public init(
        keeper: SupplyKeeper,
        accountKeeper: AccountKeeper
    ) {
        self.keeper = keeper
        self.accountKeeper = accountKeeper
    }
    
    // TODO: Implement all these
    // registers
    public func register(invariants: InvariantRegistry) {
        fatalError()
    }

    // routes
    public var route: String {
        fatalError()
    }

    public func makeHandler() -> Handler {
        fatalError()
    }
    
    public var querierRoute: String {
        fatalError()
    }
    
    public func makeQuerier() -> Querier {
        fatalError()
    }

    // ABCI
    public func beginBlock(request: Request, beginBlockRequest: RequestBeginBlock) {
        fatalError()
    }
    
    public func endBlock(request: Request, endBlockRequest: RequestEndBlock) -> [ValidatorUpdate] {
        fatalError()
    }
   
    // Genesis
    public func initGenesis(request: Request, rawMessage: RawMessage) -> [ValidatorUpdate] {
        fatalError()
    }
    
    public func exportGenesis(request: Request) -> RawMessage {
        fatalError()
    }
}
