.class Lcom/phicomm/speaker/adapter/n$1;
.super Ljava/lang/Object;
.source "SpeakerIconAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/adapter/n;->a(Lcom/phicomm/speaker/adapter/n$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/net/resultbean/GroupPic;

.field final synthetic b:I

.field final synthetic c:Lcom/phicomm/speaker/adapter/n;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/adapter/n;Lcom/phicomm/speaker/net/resultbean/GroupPic;I)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/n$1;->c:Lcom/phicomm/speaker/adapter/n;

    iput-object p2, p0, Lcom/phicomm/speaker/adapter/n$1;->a:Lcom/phicomm/speaker/net/resultbean/GroupPic;

    iput p3, p0, Lcom/phicomm/speaker/adapter/n$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "SpeakerIconAdapter"

    const-string v1, "itemView click"

    .line 71
    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/n$1;->c:Lcom/phicomm/speaker/adapter/n;

    invoke-static {v0}, Lcom/phicomm/speaker/adapter/n;->a(Lcom/phicomm/speaker/adapter/n;)Lcom/phicomm/speaker/adapter/n$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/n$1;->c:Lcom/phicomm/speaker/adapter/n;

    invoke-static {v0}, Lcom/phicomm/speaker/adapter/n;->a(Lcom/phicomm/speaker/adapter/n;)Lcom/phicomm/speaker/adapter/n$a;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/n$1;->a:Lcom/phicomm/speaker/net/resultbean/GroupPic;

    iget v2, p0, Lcom/phicomm/speaker/adapter/n$1;->b:I

    invoke-interface {v0, v1, p1, v2}, Lcom/phicomm/speaker/adapter/n$a;->a(Lcom/phicomm/speaker/net/resultbean/GroupPic;Landroid/view/View;I)V

    :cond_0
    return-void
.end method
