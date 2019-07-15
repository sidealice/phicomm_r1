.class Lcom/phicomm/speaker/PhApplication$3;
.super Ljava/lang/Object;
.source "PhApplication.java"

# interfaces
.implements Lcom/unisound/lib/usercenter/interf/IAssistantGlobalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/PhApplication;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/PhApplication;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/PhApplication;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/phicomm/speaker/PhApplication$3;->a:Lcom/phicomm/speaker/PhApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserGlobalEvent(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    const-string p1, "uc_9001"

    .line 176
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "uc_9002"

    .line 177
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 178
    invoke-static {p1}, Lcom/unisound/lib/utils/UserSpUtil;->setUserAccount(Ljava/lang/String;)V

    .line 180
    invoke-static {p1}, Lcom/unisound/lib/utils/UserSpUtil;->setFlushToken(Ljava/lang/String;)V

    .line 181
    invoke-static {p1}, Lcom/unisound/lib/utils/UserSpUtil;->setUserNickname(Ljava/lang/String;)V

    .line 182
    invoke-static {p1}, Lcom/unisound/lib/utils/UserSpUtil;->setDeviceTdid(Ljava/lang/String;)V

    .line 183
    invoke-static {p1}, Lcom/unisound/lib/utils/UserSpUtil;->setDeviceUdid(Ljava/lang/String;)V

    .line 184
    invoke-static {p1}, Lcom/unisound/lib/utils/UserSpUtil;->setAccessToken(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
