.class Lcom/phicomm/speaker/adapter/o$a$3;
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
.field final synthetic a:Z

.field final synthetic b:Lcom/phicomm/speaker/adapter/o$a;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/adapter/o$a;Z)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/o$a$3;->b:Lcom/phicomm/speaker/adapter/o$a;

    iput-boolean p2, p0, Lcom/phicomm/speaker/adapter/o$a$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 225
    iget-boolean p1, p0, Lcom/phicomm/speaker/adapter/o$a$3;->a:Z

    if-eqz p1, :cond_0

    .line 226
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/o$a$3;->b:Lcom/phicomm/speaker/adapter/o$a;

    iget-object p1, p1, Lcom/phicomm/speaker/adapter/o$a;->a:Lcom/phicomm/speaker/adapter/o;

    invoke-static {p1}, Lcom/phicomm/speaker/adapter/o;->c(Lcom/phicomm/speaker/adapter/o;)Lcom/phicomm/speaker/adapter/o$b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 227
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/o$a$3;->b:Lcom/phicomm/speaker/adapter/o$a;

    iget-object p1, p1, Lcom/phicomm/speaker/adapter/o$a;->a:Lcom/phicomm/speaker/adapter/o;

    invoke-static {p1}, Lcom/phicomm/speaker/adapter/o;->c(Lcom/phicomm/speaker/adapter/o;)Lcom/phicomm/speaker/adapter/o$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/phicomm/speaker/adapter/o$b;->b()V

    goto :goto_0

    :cond_0
    const p1, 0x7f0f0226

    .line 230
    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method
