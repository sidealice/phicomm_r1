.class public abstract enum Lcn/kuwo/autosdk/api/PlayState;
.super Ljava/lang/Enum;


# static fields
.field public static final CHANGE_SONGLIST:Ljava/lang/String; = "CHANGE_SONGLIST"

.field private static final synthetic ENUM$VALUES:[Lcn/kuwo/autosdk/api/PlayState;

.field private static final MEDIA_NEXT:Ljava/lang/String; = "MEDIA_NEXT"

.field private static final MEDIA_PAUSE:Ljava/lang/String; = "MEDIA_PAUSE"

.field private static final MEDIA_PLAY:Ljava/lang/String; = "MEDIA_PLAY"

.field private static final MEDIA_PRE:Ljava/lang/String; = "MEDIA_PRE"

.field public static final enum STATE_NEXT:Lcn/kuwo/autosdk/api/PlayState;

.field public static final enum STATE_PAUSE:Lcn/kuwo/autosdk/api/PlayState;

.field public static final enum STATE_PLAY:Lcn/kuwo/autosdk/api/PlayState;

.field public static final enum STATE_PRE:Lcn/kuwo/autosdk/api/PlayState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/kuwo/autosdk/api/PlayState$1;

    const-string v1, "STATE_PRE"

    invoke-direct {v0, v1, v2}, Lcn/kuwo/autosdk/api/PlayState$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/api/PlayState;->STATE_PRE:Lcn/kuwo/autosdk/api/PlayState;

    new-instance v0, Lcn/kuwo/autosdk/api/PlayState$2;

    const-string v1, "STATE_NEXT"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/autosdk/api/PlayState$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/api/PlayState;->STATE_NEXT:Lcn/kuwo/autosdk/api/PlayState;

    new-instance v0, Lcn/kuwo/autosdk/api/PlayState$3;

    const-string v1, "STATE_PAUSE"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/autosdk/api/PlayState$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/api/PlayState;->STATE_PAUSE:Lcn/kuwo/autosdk/api/PlayState;

    new-instance v0, Lcn/kuwo/autosdk/api/PlayState$4;

    const-string v1, "STATE_PLAY"

    invoke-direct {v0, v1, v5}, Lcn/kuwo/autosdk/api/PlayState$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/autosdk/api/PlayState;->STATE_PLAY:Lcn/kuwo/autosdk/api/PlayState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcn/kuwo/autosdk/api/PlayState;

    sget-object v1, Lcn/kuwo/autosdk/api/PlayState;->STATE_PRE:Lcn/kuwo/autosdk/api/PlayState;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuwo/autosdk/api/PlayState;->STATE_NEXT:Lcn/kuwo/autosdk/api/PlayState;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/autosdk/api/PlayState;->STATE_PAUSE:Lcn/kuwo/autosdk/api/PlayState;

    aput-object v1, v0, v4

    sget-object v1, Lcn/kuwo/autosdk/api/PlayState;->STATE_PLAY:Lcn/kuwo/autosdk/api/PlayState;

    aput-object v1, v0, v5

    sput-object v0, Lcn/kuwo/autosdk/api/PlayState;->ENUM$VALUES:[Lcn/kuwo/autosdk/api/PlayState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcn/kuwo/autosdk/api/PlayState;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/kuwo/autosdk/api/PlayState;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/autosdk/api/PlayState;
    .locals 1

    const-class v0, Lcn/kuwo/autosdk/api/PlayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/autosdk/api/PlayState;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/autosdk/api/PlayState;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcn/kuwo/autosdk/api/PlayState;->ENUM$VALUES:[Lcn/kuwo/autosdk/api/PlayState;

    array-length v1, v0

    new-array v2, v1, [Lcn/kuwo/autosdk/api/PlayState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public abstract getPlayState()Ljava/lang/String;
.end method
