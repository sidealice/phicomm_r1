.class enum Lcn/kuwo/autosdk/api/PlayMode$3;
.super Lcn/kuwo/autosdk/api/PlayMode;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/kuwo/autosdk/api/PlayMode;-><init>(Ljava/lang/String;ILcn/kuwo/autosdk/api/PlayMode;)V

    return-void
.end method


# virtual methods
.method public getPlayMode()Ljava/lang/String;
    .locals 1

    const-string v0, "MEDIA_ORDER"

    return-object v0
.end method
