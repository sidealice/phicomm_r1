.class public Lcom/android/volley/RedirectError;
.super Lcom/android/volley/VolleyError;
.source "RedirectError.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/android/volley/VolleyError;-><init>()V

    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/NetworkResponse;)V
    .locals 0
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/volley/VolleyError;-><init>(Lcom/android/volley/NetworkResponse;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    .line 13
    return-void
.end method
