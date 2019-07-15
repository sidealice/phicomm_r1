.class Landroid/support/v7/app/e$a;
.super Landroid/support/v7/app/c$b;
.source "AppCompatDelegateImplV14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic c:Landroid/support/v7/app/e;


# direct methods
.method constructor <init>(Landroid/support/v7/app/e;Landroid/view/Window$Callback;)V
    .locals 0

    .line 281
    iput-object p1, p0, Landroid/support/v7/app/e$a;->c:Landroid/support/v7/app/e;

    .line 282
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/c$b;-><init>(Landroid/support/v7/app/c;Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method final a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2

    .line 301
    new-instance v0, Landroid/support/v7/view/f$a;

    iget-object v1, p0, Landroid/support/v7/app/e$a;->c:Landroid/support/v7/app/e;

    iget-object v1, v1, Landroid/support/v7/app/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/support/v7/view/f$a;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 305
    iget-object p1, p0, Landroid/support/v7/app/e$a;->c:Landroid/support/v7/app/e;

    .line 306
    invoke-virtual {p1, v0}, Landroid/support/v7/app/e;->a(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 310
    invoke-virtual {v0, p1}, Landroid/support/v7/view/f$a;->b(Landroid/support/v7/view/b;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 288
    iget-object v0, p0, Landroid/support/v7/app/e$a;->c:Landroid/support/v7/app/e;

    invoke-virtual {v0}, Landroid/support/v7/app/e;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0, p1}, Landroid/support/v7/app/e$a;->a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 292
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/c$b;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
