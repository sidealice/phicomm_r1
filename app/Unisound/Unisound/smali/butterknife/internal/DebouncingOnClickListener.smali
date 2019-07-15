.class public abstract Lbutterknife/internal/DebouncingOnClickListener;
.super Ljava/lang/Object;
.source "DebouncingOnClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ENABLE_AGAIN:Ljava/lang/Runnable;

.field private static enabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x1

    sput-boolean v0, Lbutterknife/internal/DebouncingOnClickListener;->enabled:Z

    .line 12
    new-instance v0, Lbutterknife/internal/DebouncingOnClickListener$1;

    invoke-direct {v0}, Lbutterknife/internal/DebouncingOnClickListener$1;-><init>()V

    sput-object v0, Lbutterknife/internal/DebouncingOnClickListener;->ENABLE_AGAIN:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 9
    sput-boolean p0, Lbutterknife/internal/DebouncingOnClickListener;->enabled:Z

    return p0
.end method


# virtual methods
.method public abstract doClick(Landroid/view/View;)V
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 19
    sget-boolean v0, Lbutterknife/internal/DebouncingOnClickListener;->enabled:Z

    if-eqz v0, :cond_0

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lbutterknife/internal/DebouncingOnClickListener;->enabled:Z

    .line 21
    sget-object v0, Lbutterknife/internal/DebouncingOnClickListener;->ENABLE_AGAIN:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 22
    invoke-virtual {p0, p1}, Lbutterknife/internal/DebouncingOnClickListener;->doClick(Landroid/view/View;)V

    .line 24
    :cond_0
    return-void
.end method
