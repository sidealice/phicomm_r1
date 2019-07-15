.class public final enum Lcn/kuwo/autosdk/api/PlayerStatus;
.super Ljava/lang/Enum;


# static fields
.field public static final enum BUFFERING:Lcn/kuwo/autosdk/api/PlayerStatus;

.field private static final synthetic ENUM$VALUES:[Lcn/kuwo/autosdk/api/PlayerStatus;

.field public static final enum INIT:Lcn/kuwo/autosdk/api/PlayerStatus;

.field public static final enum PAUSE:Lcn/kuwo/autosdk/api/PlayerStatus;

.field public static final enum PLAYING:Lcn/kuwo/autosdk/api/PlayerStatus;

.field public static final enum STOP:Lcn/kuwo/autosdk/api/PlayerStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/kuwo/autosdk/api/PlayerStatus;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v2}, Lcn/kuwo/autosdk/api/PlayerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/api/PlayerStatus;->INIT:Lcn/kuwo/autosdk/api/PlayerStatus;

    new-instance v0, Lcn/kuwo/autosdk/api/PlayerStatus;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/autosdk/api/PlayerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/api/PlayerStatus;->PLAYING:Lcn/kuwo/autosdk/api/PlayerStatus;

    new-instance v0, Lcn/kuwo/autosdk/api/PlayerStatus;

    const-string v1, "BUFFERING"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/autosdk/api/PlayerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/api/PlayerStatus;->BUFFERING:Lcn/kuwo/autosdk/api/PlayerStatus;

    new-instance v0, Lcn/kuwo/autosdk/api/PlayerStatus;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v5}, Lcn/kuwo/autosdk/api/PlayerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/api/PlayerStatus;->PAUSE:Lcn/kuwo/autosdk/api/PlayerStatus;

    new-instance v0, Lcn/kuwo/autosdk/api/PlayerStatus;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v6}, Lcn/kuwo/autosdk/api/PlayerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/api/PlayerStatus;->STOP:Lcn/kuwo/autosdk/api/PlayerStatus;

    const/4 v0, 0x5

    new-array v0, v0, [Lcn/kuwo/autosdk/api/PlayerStatus;

    sget-object v1, Lcn/kuwo/autosdk/api/PlayerStatus;->INIT:Lcn/kuwo/autosdk/api/PlayerStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuwo/autosdk/api/PlayerStatus;->PLAYING:Lcn/kuwo/autosdk/api/PlayerStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/autosdk/api/PlayerStatus;->BUFFERING:Lcn/kuwo/autosdk/api/PlayerStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcn/kuwo/autosdk/api/PlayerStatus;->PAUSE:Lcn/kuwo/autosdk/api/PlayerStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcn/kuwo/autosdk/api/PlayerStatus;->STOP:Lcn/kuwo/autosdk/api/PlayerStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcn/kuwo/autosdk/api/PlayerStatus;->ENUM$VALUES:[Lcn/kuwo/autosdk/api/PlayerStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/autosdk/api/PlayerStatus;
    .locals 1

    const-class v0, Lcn/kuwo/autosdk/api/PlayerStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/autosdk/api/PlayerStatus;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/autosdk/api/PlayerStatus;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcn/kuwo/autosdk/api/PlayerStatus;->ENUM$VALUES:[Lcn/kuwo/autosdk/api/PlayerStatus;

    array-length v1, v0

    new-array v2, v1, [Lcn/kuwo/autosdk/api/PlayerStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
