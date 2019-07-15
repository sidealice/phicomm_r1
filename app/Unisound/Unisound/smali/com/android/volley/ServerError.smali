.class public Lcom/android/volley/ServerError;
.super Lcom/android/volley/VolleyError;
.source "ServerError.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/volley/VolleyError;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/NetworkResponse;)V
    .locals 0
    .param p1, "networkResponse"    # Lcom/android/volley/NetworkResponse;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/volley/VolleyError;-><init>(Lcom/android/volley/NetworkResponse;)V

    .line 26
    return-void
.end method
