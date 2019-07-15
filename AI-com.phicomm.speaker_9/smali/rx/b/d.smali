.class public final Lrx/b/d;
.super Ljava/lang/Object;
.source "Actions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/b/d$a;
    }
.end annotation


# static fields
.field private static final a:Lrx/b/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lrx/b/d$a;

    invoke-direct {v0}, Lrx/b/d$a;-><init>()V

    sput-object v0, Lrx/b/d;->a:Lrx/b/d$a;

    return-void
.end method

.method public static a()Lrx/b/d$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/b/d$a<",
            "TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
        }
    .end annotation

    .line 31
    sget-object v0, Lrx/b/d;->a:Lrx/b/d$a;

    return-object v0
.end method
