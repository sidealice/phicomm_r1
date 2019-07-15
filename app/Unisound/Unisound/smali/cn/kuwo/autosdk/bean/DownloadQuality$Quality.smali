.class public final enum Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic ENUM$VALUES:[Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

.field public static final enum Q_AUTO:Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

.field public static final enum Q_HIGH:Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

.field public static final enum Q_LOSSLESS:Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

.field public static final enum Q_LOW:Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

.field public static final enum Q_PERFECT:Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

    const-string v1, "Q_AUTO"

    invoke-direct {v0, v1, v2}, Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;->Q_AUTO:Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

    new-instance v0, Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

    const-string v1, "Q_LOW"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;->Q_LOW:Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

    new-instance v0, Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

    const-string v1, "Q_HIGH"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;->Q_HIGH:Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

    new-instance v0, Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

    const-string v1, "Q_PERFECT"

    invoke-direct {v0, v1, v5}, Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;->Q_PERFECT:Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

    new-instance v0, Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

    const-string v1, "Q_LOSSLESS"

    invoke-direct {v0, v1, v6}, Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;->Q_LOSSLESS:Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

    const/4 v0, 0x5

    new-array v0, v0, [Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

    sget-object v1, Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;->Q_AUTO:Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;->Q_LOW:Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;->Q_HIGH:Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

    aput-object v1, v0, v4

    sget-object v1, Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;->Q_PERFECT:Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

    aput-object v1, v0, v5

    sget-object v1, Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;->Q_LOSSLESS:Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

    aput-object v1, v0, v6

    sput-object v0, Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;->ENUM$VALUES:[Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static bitrate2Quality(I)Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;
    .locals 1

    const/16 v0, 0x30

    if-gt p0, v0, :cond_0

    sget-object v0, Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;->Q_LOW:Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x80

    if-gt p0, v0, :cond_1

    sget-object v0, Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;->Q_HIGH:Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

    goto :goto_0

    :cond_1
    const/16 v0, 0x140

    if-gt p0, v0, :cond_2

    sget-object v0, Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;->Q_PERFECT:Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

    goto :goto_0

    :cond_2
    sget-object v0, Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;->Q_LOSSLESS:Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;
    .locals 1

    const-class v0, Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;->ENUM$VALUES:[Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

    array-length v1, v0

    new-array v2, v1, [Lcn/kuwo/autosdk/bean/DownloadQuality$Quality;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
