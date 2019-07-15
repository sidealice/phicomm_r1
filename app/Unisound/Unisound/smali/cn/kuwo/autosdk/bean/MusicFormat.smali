.class public abstract enum Lcn/kuwo/autosdk/bean/MusicFormat;
.super Ljava/lang/Enum;


# static fields
.field public static final enum AAC:Lcn/kuwo/autosdk/bean/MusicFormat;

.field public static final enum APE:Lcn/kuwo/autosdk/bean/MusicFormat;

.field private static final synthetic ENUM$VALUES:[Lcn/kuwo/autosdk/bean/MusicFormat;

.field public static final enum FLAC:Lcn/kuwo/autosdk/bean/MusicFormat;

.field public static final enum MP3:Lcn/kuwo/autosdk/bean/MusicFormat;

.field public static final enum MP4:Lcn/kuwo/autosdk/bean/MusicFormat;

.field public static final enum NONE:Lcn/kuwo/autosdk/bean/MusicFormat;

.field public static final enum WMA:Lcn/kuwo/autosdk/bean/MusicFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcn/kuwo/autosdk/bean/MusicFormat$1;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/autosdk/bean/MusicFormat$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/bean/MusicFormat;->NONE:Lcn/kuwo/autosdk/bean/MusicFormat;

    new-instance v0, Lcn/kuwo/autosdk/bean/MusicFormat$2;

    const-string v1, "AAC"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/autosdk/bean/MusicFormat$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/bean/MusicFormat;->AAC:Lcn/kuwo/autosdk/bean/MusicFormat;

    new-instance v0, Lcn/kuwo/autosdk/bean/MusicFormat$3;

    const-string v1, "MP3"

    invoke-direct {v0, v1, v5}, Lcn/kuwo/autosdk/bean/MusicFormat$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/bean/MusicFormat;->MP3:Lcn/kuwo/autosdk/bean/MusicFormat;

    new-instance v0, Lcn/kuwo/autosdk/bean/MusicFormat$4;

    const-string v1, "MP4"

    invoke-direct {v0, v1, v6}, Lcn/kuwo/autosdk/bean/MusicFormat$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/bean/MusicFormat;->MP4:Lcn/kuwo/autosdk/bean/MusicFormat;

    new-instance v0, Lcn/kuwo/autosdk/bean/MusicFormat$5;

    const-string v1, "WMA"

    invoke-direct {v0, v1, v7}, Lcn/kuwo/autosdk/bean/MusicFormat$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/bean/MusicFormat;->WMA:Lcn/kuwo/autosdk/bean/MusicFormat;

    new-instance v0, Lcn/kuwo/autosdk/bean/MusicFormat$6;

    const-string v1, "APE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/kuwo/autosdk/bean/MusicFormat$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/bean/MusicFormat;->APE:Lcn/kuwo/autosdk/bean/MusicFormat;

    new-instance v0, Lcn/kuwo/autosdk/bean/MusicFormat$7;

    const-string v1, "FLAC"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcn/kuwo/autosdk/bean/MusicFormat$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/bean/MusicFormat;->FLAC:Lcn/kuwo/autosdk/bean/MusicFormat;

    const/4 v0, 0x7

    new-array v0, v0, [Lcn/kuwo/autosdk/bean/MusicFormat;

    sget-object v1, Lcn/kuwo/autosdk/bean/MusicFormat;->NONE:Lcn/kuwo/autosdk/bean/MusicFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/autosdk/bean/MusicFormat;->AAC:Lcn/kuwo/autosdk/bean/MusicFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcn/kuwo/autosdk/bean/MusicFormat;->MP3:Lcn/kuwo/autosdk/bean/MusicFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcn/kuwo/autosdk/bean/MusicFormat;->MP4:Lcn/kuwo/autosdk/bean/MusicFormat;

    aput-object v1, v0, v6

    sget-object v1, Lcn/kuwo/autosdk/bean/MusicFormat;->WMA:Lcn/kuwo/autosdk/bean/MusicFormat;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcn/kuwo/autosdk/bean/MusicFormat;->APE:Lcn/kuwo/autosdk/bean/MusicFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcn/kuwo/autosdk/bean/MusicFormat;->FLAC:Lcn/kuwo/autosdk/bean/MusicFormat;

    aput-object v2, v0, v1

    sput-object v0, Lcn/kuwo/autosdk/bean/MusicFormat;->ENUM$VALUES:[Lcn/kuwo/autosdk/bean/MusicFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcn/kuwo/autosdk/bean/MusicFormat;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/kuwo/autosdk/bean/MusicFormat;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getFormatFromDiscribe(Ljava/lang/String;)Lcn/kuwo/autosdk/bean/MusicFormat;
    .locals 5

    if-nez p0, :cond_1

    sget-object v0, Lcn/kuwo/autosdk/bean/MusicFormat;->NONE:Lcn/kuwo/autosdk/bean/MusicFormat;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcn/kuwo/autosdk/bean/MusicFormat;->values()[Lcn/kuwo/autosdk/bean/MusicFormat;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-lt v1, v3, :cond_2

    sget-object v0, Lcn/kuwo/autosdk/bean/MusicFormat;->NONE:Lcn/kuwo/autosdk/bean/MusicFormat;

    goto :goto_0

    :cond_2
    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcn/kuwo/autosdk/bean/MusicFormat;->getDiscribe()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public static getFormatFromDiscribe4Quku(Ljava/lang/String;)Lcn/kuwo/autosdk/bean/MusicFormat;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/kuwo/autosdk/bean/MusicFormat;->NONE:Lcn/kuwo/autosdk/bean/MusicFormat;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcn/kuwo/autosdk/bean/MusicFormat;->values()[Lcn/kuwo/autosdk/bean/MusicFormat;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-lt v1, v3, :cond_2

    sget-object v0, Lcn/kuwo/autosdk/bean/MusicFormat;->NONE:Lcn/kuwo/autosdk/bean/MusicFormat;

    goto :goto_0

    :cond_2
    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcn/kuwo/autosdk/bean/MusicFormat;->getDiscribe()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/autosdk/bean/MusicFormat;
    .locals 1

    const-class v0, Lcn/kuwo/autosdk/bean/MusicFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/autosdk/bean/MusicFormat;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/autosdk/bean/MusicFormat;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcn/kuwo/autosdk/bean/MusicFormat;->ENUM$VALUES:[Lcn/kuwo/autosdk/bean/MusicFormat;

    array-length v1, v0

    new-array v2, v1, [Lcn/kuwo/autosdk/bean/MusicFormat;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public abstract getDiscribe()Ljava/lang/String;
.end method
