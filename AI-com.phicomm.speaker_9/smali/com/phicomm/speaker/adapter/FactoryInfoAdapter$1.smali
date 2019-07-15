.class Lcom/phicomm/speaker/adapter/FactoryInfoAdapter$1;
.super Ljava/lang/Object;
.source "FactoryInfoAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->a(Landroid/view/ViewGroup;I)Lcom/phicomm/speaker/adapter/FactoryInfoAdapter$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter$1;->a:Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 65
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter$1;->a:Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;

    invoke-static {v1}, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->a(Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;)Lcom/phicomm/speaker/adapter/FactoryInfoAdapter$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter$1;->a:Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;

    invoke-static {v1}, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->a(Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;)Lcom/phicomm/speaker/adapter/FactoryInfoAdapter$a;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, p1, v0}, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter$a;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
