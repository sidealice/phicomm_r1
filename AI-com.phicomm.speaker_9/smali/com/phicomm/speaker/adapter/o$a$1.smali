.class Lcom/phicomm/speaker/adapter/o$a$1;
.super Ljava/lang/Object;
.source "SpeakerV2Adapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/adapter/o$a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

.field final synthetic b:Lcom/phicomm/speaker/adapter/o$a;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/adapter/o$a;Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/o$a$1;->b:Lcom/phicomm/speaker/adapter/o$a;

    iput-object p2, p0, Lcom/phicomm/speaker/adapter/o$a$1;->a:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 193
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/phicomm/speaker/adapter/o$a$1;->b:Lcom/phicomm/speaker/adapter/o$a;

    iget-object v0, v0, Lcom/phicomm/speaker/adapter/o$a;->a:Lcom/phicomm/speaker/adapter/o;

    invoke-static {v0}, Lcom/phicomm/speaker/adapter/o;->a(Lcom/phicomm/speaker/adapter/o;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "data"

    .line 194
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/o$a$1;->a:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 195
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/o$a$1;->b:Lcom/phicomm/speaker/adapter/o$a;

    iget-object v0, v0, Lcom/phicomm/speaker/adapter/o$a;->a:Lcom/phicomm/speaker/adapter/o;

    invoke-static {v0}, Lcom/phicomm/speaker/adapter/o;->a(Lcom/phicomm/speaker/adapter/o;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
