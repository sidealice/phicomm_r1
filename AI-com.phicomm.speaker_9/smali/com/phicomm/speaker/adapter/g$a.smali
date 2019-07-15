.class Lcom/phicomm/speaker/adapter/g$a;
.super Landroid/support/v7/widget/RecyclerView$t;
.source "LyricsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/adapter/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field final synthetic b:Lcom/phicomm/speaker/adapter/g;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/adapter/g;Landroid/view/View;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/g$a;->b:Lcom/phicomm/speaker/adapter/g;

    .line 123
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$t;-><init>(Landroid/view/View;)V

    .line 124
    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/phicomm/speaker/adapter/g$a;->a:Landroid/widget/TextView;

    return-void
.end method
