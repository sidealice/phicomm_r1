.class final Lrx/exceptions/CompositeException$d;
.super Lrx/exceptions/CompositeException$b;
.source "CompositeException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/exceptions/CompositeException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    .line 260
    invoke-direct {p0}, Lrx/exceptions/CompositeException$b;-><init>()V

    .line 261
    iput-object p1, p0, Lrx/exceptions/CompositeException$d;->a:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .locals 1

    .line 266
    iget-object v0, p0, Lrx/exceptions/CompositeException$d;->a:Ljava/io/PrintWriter;

    return-object v0
.end method

.method a(Ljava/lang/Object;)V
    .locals 1

    .line 271
    iget-object v0, p0, Lrx/exceptions/CompositeException$d;->a:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method
