.class Lcom/phicomm/speaker/adapter/b/d$1;
.super Ljava/lang/Object;
.source "LocalVideoItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/adapter/b/d;->a(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/phicomm/speaker/adapter/b/d;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/adapter/b/d;Landroid/view/ViewGroup;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/b/d$1;->b:Lcom/phicomm/speaker/adapter/b/d;

    iput-object p2, p0, Lcom/phicomm/speaker/adapter/b/d$1;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 46
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/b/d$1;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "https://home.phicomm.com/phispeaker/#/guidevideo"

    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/f;->d(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
