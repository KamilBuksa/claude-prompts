# ✅ Quality Gates Checklist

**Use before implementation** to catch issues early and ensure high-quality code.

## Pre-Implementation Checklist

Before writing code, verify:
- [ ] All edge cases identified
- [ ] Error handling strategy defined  
- [ ] Rollback plan exists
- [ ] Monitoring points identified
- [ ] Performance impact assessed
- [ ] Security review completed

## Edge Case & Problem Detection

### Comprehensive Analysis Template
```
Think harder about potential issues:
- What happens under high load?
- How does this fail gracefully?  
- What are the security implications?
- Consider timezone edge cases
- Check for memory leaks
- Verify thread safety
```

### Load & Performance
- [ ] **High load scenarios** - How does it behave?
- [ ] **Graceful failure** - What's the degradation path?
- [ ] **Memory usage** - Any potential leaks?
- [ ] **Thread safety** - Concurrent access issues?
- [ ] **Database load** - Query performance impact?

### Security Considerations
Apply OWASP Top 10 considerations:
- [ ] **Input validation** - All inputs sanitized?
- [ ] **Authentication/authorization** - Proper access control?
- [ ] **Data encryption** - Sensitive data protected?
- [ ] **SQL injection prevention** - Parameterized queries?
- [ ] **XSS protection** - Output encoding implemented?

### Data & State
- [ ] **Timezone edge cases** - UTC handling correct?
- [ ] **Data migrations** - Backward compatibility?
- [ ] **State consistency** - Race conditions handled?
- [ ] **Null/undefined values** - All cases covered?
- [ ] **Large datasets** - Pagination/chunking needed?

## Industry Standards Compliance

### Framework-Specific Checks
Implement this following:
- [ ] **React best practices** (hooks rules, composition)
- [ ] **SOLID principles** applied
- [ ] **12-factor app methodology** considered  
- [ ] **WCAG 2.1 accessibility** standards met
- [ ] **SEO best practices** implemented

### API Standards  
For API endpoints, verify:
- [ ] **REST best practices** followed
- [ ] **Proper status codes** usage
- [ ] **Idempotency** where needed
- [ ] **API versioning** strategy followed
- [ ] **Rate limiting** considerations included

## Consistency Enforcement

### Pattern Matching
First examine how we handle similar features:
- [ ] Check `src/components/forms/`
- [ ] Review `src/utils/validation/`  
- [ ] Follow existing error patterns
- [ ] Match current naming conventions

### Style Guide Adherence
Ensure consistency with:
- [ ] **ESLint configuration** passes
- [ ] **Team's naming conventions** followed
- [ ] **Existing test patterns** matched
- [ ] **Current documentation format** used
- [ ] **Git commit message style** followed

## The Triple-Check Pattern

For critical features:
1. [ ] **Initial implementation** complete
2. [ ] **Review for edge cases** done
3. [ ] **Verify against requirements** checked
4. [ ] **Check performance implications** assessed  
5. [ ] **Ensure backward compatibility** maintained
6. [ ] **Validate with tests** passing

## 🚨 Red Flags to Watch

- **No existing similar code** - Are you reinventing?
- **Complex logic in one place** - Should it be broken down?
- **No error handling** - What could go wrong?
- **No tests planned** - How will you verify?
- **Breaking changes** - Migration strategy needed?

## Quick Quality Prompts

### Before Starting
```
Before implementing [feature], help me identify:
- All potential edge cases
- Required error handling strategies  
- Performance implications
- Security considerations
- Existing patterns I should follow
```

### During Implementation  
```
Review this implementation for:
- Edge cases I might have missed
- Security vulnerabilities
- Performance bottlenecks
- Consistency with existing code patterns
```

*Quality gates save time. Use them religiously.* 🛡️