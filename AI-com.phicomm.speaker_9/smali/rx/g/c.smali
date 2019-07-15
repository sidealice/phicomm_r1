.class public final Lrx/g/c;
.super Ljava/lang/Object;
.source "Subscriptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/g/c$a;
    }
.end annotation


# static fields
.field private static final a:Lrx/g/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lrx/g/c$a;

    invoke-direct {v0}, Lrx/g/c$a;-><init>()V

    sput-object v0, Lrx/g/c;->a:Lrx/g/c$a;

    return-void
.end method

.method public static a()Lrx/j;
    .locals 1

    .line 67
    sget-object v0, Lrx/g/c;->a:Lrx/g/c$a;

    return-object v0
.end method

.method public static a(Lrx/b/a;)Lrx/j;
    .locals 0

    .line 78
    invoke-static {p0}, Lrx/g/a;->a(Lrx/b/a;)Lrx/g/a;

    move-result-object p0

    return-object p0
.end method
