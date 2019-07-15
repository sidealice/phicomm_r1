.class Lcom/phicomm/speaker/adapter/d$1;
.super Ljava/lang/Object;
.source "IntroductionAdapter.java"

# interfaces
.implements Lcom/phicomm/speaker/adapter/c/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/adapter/d;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/adapter/d;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/adapter/d;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/d$1;->a:Lcom/phicomm/speaker/adapter/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/Introduction;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/d$1;->a:Lcom/phicomm/speaker/adapter/d;

    iget-object v0, v0, Lcom/phicomm/speaker/adapter/d;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/phicomm/speaker/activity/UpdateDetailActivity;->a(Landroid/content/Context;Lcom/phicomm/speaker/bean/Introduction;)V

    return-void
.end method
