.class public abstract enum Lcn/kuwo/autosdk/api/PlayMode;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic ENUM$VALUES:[Lcn/kuwo/autosdk/api/PlayMode;

.field private static final MEDIA_CIRCLE:Ljava/lang/String; = "MEDIA_CIRCLE"

.field private static final MEDIA_ONE:Ljava/lang/String; = "MEDIA_ONE"

.field private static final MEDIA_ORDER:Ljava/lang/String; = "MEDIA_ORDER"

.field private static final MEDIA_RANDOM:Ljava/lang/String; = "MEDIA_RANDOM"

.field private static final MEDIA_SINGLE:Ljava/lang/String; = "MEDIA_SINGLE"

.field public static final enum MODE_ALL_CIRCLE:Lcn/kuwo/autosdk/api/PlayMode;

.field public static final enum MODE_ALL_ORDER:Lcn/kuwo/autosdk/api/PlayMode;

.field public static final enum MODE_ALL_RANDOM:Lcn/kuwo/autosdk/api/PlayMode;

.field public static final enum MODE_SINGLE_CIRCLE:Lcn/kuwo/autosdk/api/PlayMode;

.field public static final enum MODE_SINGLE_PLAY:Lcn/kuwo/autosdk/api/PlayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/kuwo/autosdk/api/PlayMode$1;

    const-string v1, "MODE_SINGLE_CIRCLE"

    invoke-direct {v0, v1, v2}, Lcn/kuwo/autosdk/api/PlayMode$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/api/PlayMode;->MODE_SINGLE_CIRCLE:Lcn/kuwo/autosdk/api/PlayMode;

    new-instance v0, Lcn/kuwo/autosdk/api/PlayMode$2;

    const-string v1, "MODE_SINGLE_PLAY"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/autosdk/api/PlayMode$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/api/PlayMode;->MODE_SINGLE_PLAY:Lcn/kuwo/autosdk/api/PlayMode;

    new-instance v0, Lcn/kuwo/autosdk/api/PlayMode$3;

    const-string v1, "MODE_ALL_ORDER"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/autosdk/api/PlayMode$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/api/PlayMode;->MODE_ALL_ORDER:Lcn/kuwo/autosdk/api/PlayMode;

    new-instance v0, Lcn/kuwo/autosdk/api/PlayMode$4;

    const-string v1, "MODE_ALL_CIRCLE"

    invoke-direct {v0, v1, v5}, Lcn/kuwo/autosdk/api/PlayMode$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/api/PlayMode;->MODE_ALL_CIRCLE:Lcn/kuwo/autosdk/api/PlayMode;

    new-instance v0, Lcn/kuwo/autosdk/api/PlayMode$5;

    const-string v1, "MODE_ALL_RANDOM"

    invoke-direct {v0, v1, v6}, Lcn/kuwo/autosdk/api/PlayMode$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/api/PlayMode;->MODE_ALL_RANDOM:Lcn/kuwo/autosdk/api/PlayMode;

    const/4 v0, 0x5

    new-array v0, v0, [Lcn/kuwo/autosdk/api/PlayMode;

    sget-object v1, Lcn/kuwo/autosdk/api/PlayMode;->MODE_SINGLE_CIRCLE:Lcn/kuwo/autosdk/api/PlayMode;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuwo/autosdk/api/PlayMode;->MODE_SINGLE_PLAY:Lcn/kuwo/autosdk/api/PlayMode;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/autosdk/api/PlayMode;->MODE_ALL_ORDER:Lcn/kuwo/autosdk/api/PlayMode;

    aput-object v1, v0, v4

    sget-object v1, Lcn/kuwo/autosdk/api/PlayMode;->MODE_ALL_CIRCLE:Lcn/kuwo/autosdk/api/PlayMode;

    aput-object v1, v0, v5

    sget-object v1, Lcn/kuwo/autosdk/api/PlayMode;->MODE_ALL_RANDOM:Lcn/kuwo/autosdk/api/PlayMode;

    aput-object v1, v0, v6

    sput-object v0, Lcn/kuwo/autosdk/api/PlayMode;->ENUM$VALUES:[Lcn/kuwo/autosdk/api/PlayMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcn/kuwo/autosdk/api/PlayMode;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/kuwo/autosdk/api/PlayMode;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/autosdk/api/PlayMode;
    .locals 1

    const-class v0, Lcn/kuwo/autosdk/api/PlayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/autosdk/api/PlayMode;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/autosdk/api/PlayMode;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcn/kuwo/autosdk/api/PlayMode;->ENUM$VALUES:[Lcn/kuwo/autosdk/api/PlayMode;

    array-length v1, v0

    new-array v2, v1, [Lcn/kuwo/autosdk/api/PlayMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public abstract getPlayMode()Ljava/lang/String;
.end method
