.class Lcom/phicomm/speaker/adapter/e$b;
.super Landroid/support/v7/widget/RecyclerView$t;
.source "LoadErrorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/adapter/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Lcom/phicomm/speaker/views/DefaultExceptionView;

.field final synthetic b:Lcom/phicomm/speaker/adapter/e;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/adapter/e;Lcom/phicomm/speaker/views/DefaultExceptionView;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/e$b;->b:Lcom/phicomm/speaker/adapter/e;

    .line 52
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$t;-><init>(Landroid/view/View;)V

    .line 53
    iput-object p2, p0, Lcom/phicomm/speaker/adapter/e$b;->a:Lcom/phicomm/speaker/views/DefaultExceptionView;

    return-void
.end method
