# 🔌 API Endpoint Implementation Template

**Copy-paste ready template** for consistent API development.

## Research Phase Template

```
Look at the existing API routes in src/api/routes
Read userRoutes.ts and authRoutes.ts to understand the middleware pattern
Think hard about error handling and validation approach

Before implementing, identify which middlewares and utilities you'll reuse
```

## Implementation Template

```
Implement a new /api/[RESOURCE] endpoint that:

- Uses the existing auth middleware from src/middleware/auth
- Follows the same validation pattern using existing validators  
- Reuses the error handler from src/utils/errorHandler
- Matches the response format of other endpoints
- Uses existing database utilities from src/db/utils

Before implementing, list all existing components/utilities you'll reuse and explain your approach.
```

## Quality Checks Template

```
For this API endpoint:

1. Check against REST best practices
2. Verify proper status codes usage  
3. Ensure idempotency where needed
4. Follow our project's API versioning strategy
5. Include rate limiting considerations
```

## Complete Workflow Example

### Step 1: Research
```
Search for existing API endpoints in our codebase
Read the main route files to understand patterns:
- How is authentication handled?
- What's the validation pattern?
- How are errors formatted?
- What's the response structure?
```

### Step 2: Plan  
```
Think hard about this new /api/products endpoint:
- What are the CRUD operations needed?
- What validation rules apply?
- What are the security requirements?
- How should it handle edge cases?
- What's the expected load?
```

### Step 3: Implement
```
Create /api/products endpoint following existing patterns:

GET /api/products
- Pagination support
- Filtering capabilities  
- Search functionality
- Proper caching headers

POST /api/products  
- Input validation using existing validators
- Authentication required
- Duplicate checking
- Audit logging

PUT /api/products/:id
- Idempotent updates
- Optimistic locking
- Change tracking

DELETE /api/products/:id
- Soft delete pattern
- Cascade considerations
- Authorization checks
```

## Standard Checklist

Before implementing any API endpoint:

**Authentication & Authorization**
- [ ] Who can access this endpoint?
- [ ] What permissions are required?
- [ ] Rate limiting needed?

**Input Validation**  
- [ ] All required fields validated?
- [ ] Data types checked?
- [ ] Business rules enforced?
- [ ] SQL injection prevention?

**Error Handling**
- [ ] Consistent error format?
- [ ] Appropriate status codes?
- [ ] Helpful error messages?
- [ ] Logging for debugging?

**Performance**
- [ ] Database queries optimized?  
- [ ] Caching strategy defined?
- [ ] Pagination implemented?
- [ ] Response size reasonable?

**Security**
- [ ] Input sanitization?
- [ ] Output encoding?
- [ ] CORS configured?
- [ ] HTTPS enforced?

## Response Format Standards

```javascript
// Success Response
{
  "success": true,
  "data": [...],
  "meta": {
    "total": 100,
    "page": 1,  
    "limit": 20
  }
}

// Error Response
{
  "success": false,
  "error": {
    "code": "VALIDATION_ERROR",
    "message": "Invalid input provided",
    "details": [
      {
        "field": "email",
        "message": "Email is required"
      }
    ]
  }
}
```

## Status Codes Guide

- **200** - Success (GET, PUT)
- **201** - Created (POST)  
- **204** - No Content (DELETE)
- **400** - Bad Request (validation errors)
- **401** - Unauthorized (authentication required)
- **403** - Forbidden (insufficient permissions)
- **404** - Not Found (resource doesn't exist)
- **409** - Conflict (duplicate resource)
- **422** - Unprocessable Entity (business logic error)
- **429** - Too Many Requests (rate limiting)
- **500** - Internal Server Error

*Consistency is key. Follow the patterns.* 🎯