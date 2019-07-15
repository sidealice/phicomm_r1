.class Lin/srain/cube/views/ptr/PtrFrameLayout$2;
.super Ljava/util/ArrayList;
.source "PtrFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/srain/cube/views/ptr/PtrFrameLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lin/srain/cube/views/ptr/PtrFrameLayout;


# direct methods
.method constructor <init>(Lin/srain/cube/views/ptr/PtrFrameLayout;ILandroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$2;->d:Lin/srain/cube/views/ptr/PtrFrameLayout;

    iput-object p3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$2;->a:Landroid/view/View;

    iput-object p4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$2;->b:Landroid/view/View;

    iput-object p5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$2;->c:Landroid/view/View;

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 189
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$2;->a:Landroid/view/View;

    invoke-virtual {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout$2;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$2;->b:Landroid/view/View;

    invoke-virtual {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout$2;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$2;->c:Landroid/view/View;

    invoke-virtual {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout$2;->add(Ljava/lang/Object;)Z

    return-void
.end method
