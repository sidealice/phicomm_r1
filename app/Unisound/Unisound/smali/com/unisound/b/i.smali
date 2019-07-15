.class public Lcom/unisound/b/i;
.super Ljava/lang/Object;


# static fields
.field public static a:Z = false

.field private static final b:Ljava/lang/String; = "USCActivate"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unisound/b/i;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/unisound/b/i;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "USCActivate"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/unisound/b/i;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/unisound/b/i;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "USCActivate"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/unisound/b/i;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/unisound/b/i;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "USCActivate"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/unisound/b/i;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/unisound/b/i;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "USCActivate"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/unisound/b/i;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
