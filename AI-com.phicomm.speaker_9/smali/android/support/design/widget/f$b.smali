.class Landroid/support/design/widget/f$b;
.super Landroid/support/design/widget/f$e;
.source "FloatingActionButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/f;


# direct methods
.method constructor <init>(Landroid/support/design/widget/f;)V
    .locals 1

    .line 464
    iput-object p1, p0, Landroid/support/design/widget/f$b;->a:Landroid/support/design/widget/f;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/f$e;-><init>(Landroid/support/design/widget/f;Landroid/support/design/widget/f$1;)V

    return-void
.end method


# virtual methods
.method protected a()F
    .locals 2

    .line 469
    iget-object v0, p0, Landroid/support/design/widget/f$b;->a:Landroid/support/design/widget/f;

    iget v0, v0, Landroid/support/design/widget/f;->h:F

    iget-object v1, p0, Landroid/support/design/widget/f$b;->a:Landroid/support/design/widget/f;

    iget v1, v1, Landroid/support/design/widget/f;->i:F

    add-float/2addr v0, v1

    return v0
.end method
