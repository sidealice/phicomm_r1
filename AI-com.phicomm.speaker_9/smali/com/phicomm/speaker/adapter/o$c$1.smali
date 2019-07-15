.class Lcom/phicomm/speaker/adapter/o$c$1;
.super Ljava/lang/Object;
.source "SpeakerV2Adapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/adapter/o$c;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

.field final synthetic b:I

.field final synthetic c:Lcom/phicomm/speaker/adapter/o$c;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/adapter/o$c;Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;I)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/o$c$1;->c:Lcom/phicomm/speaker/adapter/o$c;

    iput-object p2, p0, Lcom/phicomm/speaker/adapter/o$c$1;->a:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    iput p3, p0, Lcom/phicomm/speaker/adapter/o$c$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "SpeakerV2Adapter"

    const-string v1, "itemView click"

    .line 258
    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/o$c$1;->c:Lcom/phicomm/speaker/adapter/o$c;

    iget-object v0, v0, Lcom/phicomm/speaker/adapter/o$c;->a:Lcom/phicomm/speaker/adapter/o;

    invoke-static {v0}, Lcom/phicomm/speaker/adapter/o;->c(Lcom/phicomm/speaker/adapter/o;)Lcom/phicomm/speaker/adapter/o$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/o$c$1;->c:Lcom/phicomm/speaker/adapter/o$c;

    iget-object v0, v0, Lcom/phicomm/speaker/adapter/o$c;->a:Lcom/phicomm/speaker/adapter/o;

    invoke-static {v0}, Lcom/phicomm/speaker/adapter/o;->c(Lcom/phicomm/speaker/adapter/o;)Lcom/phicomm/speaker/adapter/o$b;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/o$c$1;->a:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    iget v2, p0, Lcom/phicomm/speaker/adapter/o$c$1;->b:I

    invoke-interface {v0, v1, p1, v2}, Lcom/phicomm/speaker/adapter/o$b;->a(Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;Landroid/view/View;I)V

    :cond_0
    return-void
.end method
