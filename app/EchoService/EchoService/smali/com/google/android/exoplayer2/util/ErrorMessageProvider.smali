.class public interface abstract Lcom/google/android/exoplayer2/util/ErrorMessageProvider;
.super Ljava/lang/Object;
.source "ErrorMessageProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getErrorMessage(Ljava/lang/Exception;)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
