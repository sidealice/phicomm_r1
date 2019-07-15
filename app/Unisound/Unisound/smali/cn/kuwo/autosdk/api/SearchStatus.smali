.class public final enum Lcn/kuwo/autosdk/api/SearchStatus;
.super Ljava/lang/Enum;


# static fields
.field public static final enum CANCLE:Lcn/kuwo/autosdk/api/SearchStatus;

.field private static final synthetic ENUM$VALUES:[Lcn/kuwo/autosdk/api/SearchStatus;

.field public static final enum FAILED:Lcn/kuwo/autosdk/api/SearchStatus;

.field public static final enum NONE:Lcn/kuwo/autosdk/api/SearchStatus;

.field public static final enum SUCCESS:Lcn/kuwo/autosdk/api/SearchStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/kuwo/autosdk/api/SearchStatus;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcn/kuwo/autosdk/api/SearchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/api/SearchStatus;->SUCCESS:Lcn/kuwo/autosdk/api/SearchStatus;

    new-instance v0, Lcn/kuwo/autosdk/api/SearchStatus;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/autosdk/api/SearchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/api/SearchStatus;->FAILED:Lcn/kuwo/autosdk/api/SearchStatus;

    new-instance v0, Lcn/kuwo/autosdk/api/SearchStatus;

    const-string v1, "CANCLE"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/autosdk/api/SearchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/api/SearchStatus;->CANCLE:Lcn/kuwo/autosdk/api/SearchStatus;

    new-instance v0, Lcn/kuwo/autosdk/api/SearchStatus;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v5}, Lcn/kuwo/autosdk/api/SearchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/api/SearchStatus;->NONE:Lcn/kuwo/autosdk/api/SearchStatus;

    const/4 v0, 0x4

    new-array v0, v0, [Lcn/kuwo/autosdk/api/SearchStatus;

    sget-object v1, Lcn/kuwo/autosdk/api/SearchStatus;->SUCCESS:Lcn/kuwo/autosdk/api/SearchStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuwo/autosdk/api/SearchStatus;->FAILED:Lcn/kuwo/autosdk/api/SearchStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/autosdk/api/SearchStatus;->CANCLE:Lcn/kuwo/autosdk/api/SearchStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcn/kuwo/autosdk/api/SearchStatus;->NONE:Lcn/kuwo/autosdk/api/SearchStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcn/kuwo/autosdk/api/SearchStatus;->ENUM$VALUES:[Lcn/kuwo/autosdk/api/SearchStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/autosdk/api/SearchStatus;
    .locals 1

    const-class v0, Lcn/kuwo/autosdk/api/SearchStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/autosdk/api/SearchStatus;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/autosdk/api/SearchStatus;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcn/kuwo/autosdk/api/SearchStatus;->ENUM$VALUES:[Lcn/kuwo/autosdk/api/SearchStatus;

    array-length v1, v0

    new-array v2, v1, [Lcn/kuwo/autosdk/api/SearchStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
