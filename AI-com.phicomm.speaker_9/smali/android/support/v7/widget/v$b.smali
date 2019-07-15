.class Landroid/support/v7/widget/v$b;
.super Ljava/lang/Object;
.source "DropDownListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/v;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/v;)V
    .locals 0

    .line 698
    iput-object p1, p0, Landroid/support/v7/widget/v$b;->a:Landroid/support/v7/widget/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/v;Landroid/support/v7/widget/v$1;)V
    .locals 0

    .line 698
    invoke-direct {p0, p1}, Landroid/support/v7/widget/v$b;-><init>(Landroid/support/v7/widget/v;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 707
    iget-object v0, p0, Landroid/support/v7/widget/v$b;->a:Landroid/support/v7/widget/v;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/v;->a(Landroid/support/v7/widget/v;Landroid/support/v7/widget/v$b;)Landroid/support/v7/widget/v$b;

    .line 708
    iget-object v0, p0, Landroid/support/v7/widget/v$b;->a:Landroid/support/v7/widget/v;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/v;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .locals 1

    .line 712
    iget-object v0, p0, Landroid/support/v7/widget/v$b;->a:Landroid/support/v7/widget/v;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/v;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 2

    .line 702
    iget-object v0, p0, Landroid/support/v7/widget/v$b;->a:Landroid/support/v7/widget/v;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/v;->a(Landroid/support/v7/widget/v;Landroid/support/v7/widget/v$b;)Landroid/support/v7/widget/v$b;

    .line 703
    iget-object v0, p0, Landroid/support/v7/widget/v$b;->a:Landroid/support/v7/widget/v;

    invoke-virtual {v0}, Landroid/support/v7/widget/v;->drawableStateChanged()V

    return-void
.end method
