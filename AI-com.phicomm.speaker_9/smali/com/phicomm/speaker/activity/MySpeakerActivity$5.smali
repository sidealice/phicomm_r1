.class Lcom/phicomm/speaker/activity/MySpeakerActivity$5;
.super Lcom/phicomm/speaker/e/c/b;
.source "MySpeakerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/MySpeakerActivity;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/e/c/b<",
        "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/MySpeakerActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/MySpeakerActivity;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity$5;->a:Lcom/phicomm/speaker/activity/MySpeakerActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 3

    const-string v0, "MySpeakerActivity"

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openDormantMode onUniFailed stateCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-super {p0, p1}, Lcom/phicomm/speaker/e/c/b;->a(I)V

    .line 260
    iget-object p1, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity$5;->a:Lcom/phicomm/speaker/activity/MySpeakerActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->j()V

    return-void
.end method

.method protected a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 2

    const-string p2, "MySpeakerActivity"

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openDormantMode onUniSuccess stateCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 250
    check-cast p2, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/activity/MySpeakerActivity$5;->a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V

    return-void
.end method
