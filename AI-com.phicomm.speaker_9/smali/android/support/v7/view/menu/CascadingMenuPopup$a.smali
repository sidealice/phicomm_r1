.class Landroid/support/v7/view/menu/CascadingMenuPopup$a;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/CascadingMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/support/v7/widget/ab;

.field public final b:Landroid/support/v7/view/menu/MenuBuilder;

.field public final c:I


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ab;Landroid/support/v7/view/menu/MenuBuilder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/ab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/view/menu/MenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 797
    iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$a;->a:Landroid/support/v7/widget/ab;

    .line 798
    iput-object p2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$a;->b:Landroid/support/v7/view/menu/MenuBuilder;

    .line 799
    iput p3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$a;->c:I

    return-void
.end method


# virtual methods
.method public a()Landroid/widget/ListView;
    .locals 1

    .line 803
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$a;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->g()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method
