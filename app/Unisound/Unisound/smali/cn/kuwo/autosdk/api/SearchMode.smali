.class public final enum Lcn/kuwo/autosdk/api/SearchMode;
.super Ljava/lang/Enum;


# static fields
.field public static final enum ALBUM:Lcn/kuwo/autosdk/api/SearchMode;

.field public static final enum ALL:Lcn/kuwo/autosdk/api/SearchMode;

.field public static final enum ARTIST:Lcn/kuwo/autosdk/api/SearchMode;

.field private static final synthetic ENUM$VALUES:[Lcn/kuwo/autosdk/api/SearchMode;

.field public static final enum MV:Lcn/kuwo/autosdk/api/SearchMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/kuwo/autosdk/api/SearchMode;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2}, Lcn/kuwo/autosdk/api/SearchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/api/SearchMode;->ALL:Lcn/kuwo/autosdk/api/SearchMode;

    new-instance v0, Lcn/kuwo/autosdk/api/SearchMode;

    const-string v1, "ARTIST"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/autosdk/api/SearchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/api/SearchMode;->ARTIST:Lcn/kuwo/autosdk/api/SearchMode;

    new-instance v0, Lcn/kuwo/autosdk/api/SearchMode;

    const-string v1, "ALBUM"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/autosdk/api/SearchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/api/SearchMode;->ALBUM:Lcn/kuwo/autosdk/api/SearchMode;

    new-instance v0, Lcn/kuwo/autosdk/api/SearchMode;

    const-string v1, "MV"

    invoke-direct {v0, v1, v5}, Lcn/kuwo/autosdk/api/SearchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/api/SearchMode;->MV:Lcn/kuwo/autosdk/api/SearchMode;

    const/4 v0, 0x4

    new-array v0, v0, [Lcn/kuwo/autosdk/api/SearchMode;

    sget-object v1, Lcn/kuwo/autosdk/api/SearchMode;->ALL:Lcn/kuwo/autosdk/api/SearchMode;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuwo/autosdk/api/SearchMode;->ARTIST:Lcn/kuwo/autosdk/api/SearchMode;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/autosdk/api/SearchMode;->ALBUM:Lcn/kuwo/autosdk/api/SearchMode;

    aput-object v1, v0, v4

    sget-object v1, Lcn/kuwo/autosdk/api/SearchMode;->MV:Lcn/kuwo/autosdk/api/SearchMode;

    aput-object v1, v0, v5

    sput-object v0, Lcn/kuwo/autosdk/api/SearchMode;->ENUM$VALUES:[Lcn/kuwo/autosdk/api/SearchMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/autosdk/api/SearchMode;
    .locals 1

    const-class v0, Lcn/kuwo/autosdk/api/SearchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/autosdk/api/SearchMode;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/autosdk/api/SearchMode;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcn/kuwo/autosdk/api/SearchMode;->ENUM$VALUES:[Lcn/kuwo/autosdk/api/SearchMode;

    array-length v1, v0

    new-array v2, v1, [Lcn/kuwo/autosdk/api/SearchMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
